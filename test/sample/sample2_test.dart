import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sensor_if_viewer/sample/sample2.dart';

/// --- Mock 定義 ---
class MockCounterRepository extends Mock implements CounterRepository {}

class MockThemeBloc extends MockBloc<ThemeEvent, ThemeState>
    implements ThemeBloc {}

void main() {
  group('CounterBloc Unit Tests', () {
    late MockCounterRepository mockRepo;

    setUp(() {
      mockRepo = MockCounterRepository();
    });

    blocTest<CounterBloc, CounterState>(
      'LoadCounter success',
      build: () {
        when(() => mockRepo.fetchInitialCount()).thenAnswer((_) async => 10);
        return CounterBloc(repository: mockRepo);
      },
      act: (bloc) => bloc.add(LoadCounter()),
      expect: () => [const CounterState(10)],
      verify: (_) => verify(() => mockRepo.fetchInitialCount()).called(1),
    );

    blocTest<CounterBloc, CounterState>(
      'IncrementCounter twice',
      build: () => CounterBloc(repository: mockRepo),
      act: (bloc) {
        bloc.add(IncrementCounter());
        bloc.add(IncrementCounter());
      },
      expect: () => [const CounterState(1), const CounterState(2)],
    );
  });

  group('Widget Tests with Animation', () {
    late MockCounterRepository mockRepo;

    setUp(() {
      mockRepo = MockCounterRepository();
    });

    testWidgets('increment animates box width', (tester) async {
      when(() => mockRepo.fetchInitialCount()).thenAnswer((_) async => 0);
      await tester.pumpWidget(
        MaterialApp(home: CounterPage(repository: mockRepo)),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('incrementButton')));
      await tester.pump(); // アニメ開始
      await tester.pump(const Duration(milliseconds: 50)); // 中間
      final midWidth = tester
          .getSize(find.byKey(const Key('animatedBox')))
          .width;
      expect(midWidth, greaterThan(0.0));
      expect(midWidth, lessThan(100.0));

      await tester.pumpAndSettle();
      final finalWidth = tester
          .getSize(find.byKey(const Key('animatedBox')))
          .width;
      expect(finalWidth, 100.0);
    });
  });

  group('Widget Test using whenListen for ThemeBloc', () {
    late MockCounterRepository mockRepo;
    late MockThemeBloc mockThemeBloc;

    setUp(() {
      mockRepo = MockCounterRepository();
      mockThemeBloc = MockThemeBloc();
    });

    testWidgets('ThemeBloc changes background color via whenListen', (
      tester,
    ) async {
      // CounterRepository は固定値を返すように
      when(() => mockRepo.fetchInitialCount()).thenAnswer((_) async => 0);

      // ThemeBloc の状態ストリームを whenListen でモック
      final controller = StreamController<ThemeState>();
      whenListen(
        mockThemeBloc,
        controller.stream,
        initialState: const ThemeState(Colors.white),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: CounterPage(
            repository: mockRepo,
            themeBlocOverride: mockThemeBloc,
          ),
        ),
      );

      // 最初の状態（白背景）
      await tester.pump();
      var scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
      print(scaffold.backgroundColor);
      expect(scaffold.backgroundColor, equals(Colors.white));

      // 次の状態（白色背景）
      controller.add(const ThemeState(Colors.white));
      await tester.pump();
      scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
      print(scaffold.backgroundColor);
      expect(scaffold.backgroundColor, equals(Colors.white));

      // 次の状態（灰色背景）
      controller.add(const ThemeState(Colors.grey));
      await tester.pump();
      scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
      print(scaffold.backgroundColor);
      expect(scaffold.backgroundColor, equals(Colors.grey));
    });
  });
}
