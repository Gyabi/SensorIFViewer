import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:common/common.dart';

/// --- Repository interface ---
abstract class CounterRepository {
  Future<int> fetchInitialCount();
}

class ImplCounterRepository extends CounterRepository {
  @override
  Future<int> fetchInitialCount() async {
    return 0;
  }
}

/// --- Counter Events ---
abstract class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object?> get props => [];
}

class LoadCounter extends CounterEvent {}

class IncrementCounter extends CounterEvent {}

/// --- Counter State ---
class CounterState extends Equatable {
  final int count;
  const CounterState(this.count);
  @override
  List<Object?> get props => [count];
}

/// --- CounterBloc ---
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository repository;

  CounterBloc({required this.repository}) : super(const CounterState(0)) {
    on<LoadCounter>(_onLoad);
    on<IncrementCounter>(_onIncrement);
  }

  Future<void> _onLoad(LoadCounter _, Emitter<CounterState> emit) async {
    try {
      final initial = await repository.fetchInitialCount();
      emit(CounterState(initial));
    } catch (_) {
      emit(const CounterState(-1));
    }
  }

  void _onIncrement(IncrementCounter _, Emitter<CounterState> emit) {
    emit(CounterState(state.count + 1));
  }
}

/// --- ThemeBloc (UI背景色を管理する) ---
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
  @override
  List<Object?> get props => [];
}

class ToggleTheme extends ThemeEvent {}

class ThemeState extends Equatable {
  final Color backgroundColor;
  const ThemeState(this.backgroundColor);
  @override
  List<Object?> get props => [backgroundColor];
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(Colors.white)) {
    on<ToggleTheme>(_onToggle);
  }

  void _onToggle(ToggleTheme _, Emitter<ThemeState> emit) {
    final newColor = state.backgroundColor == Colors.white
        ? Colors.grey
        : Colors.white;
    emit(ThemeState(newColor));
  }
}

/// --- UI ---
class CounterPage extends StatelessWidget {
  final CounterRepository repository;
  final ThemeBloc? themeBlocOverride; // テスト時に whenListen で流すモックを渡せる

  const CounterPage({
    super.key,
    required this.repository,
    this.themeBlocOverride,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              CounterBloc(repository: repository)..add(LoadCounter()),
        ),
        BlocProvider<ThemeBloc>(
          create: (_) => themeBlocOverride ?? ThemeBloc(),
        ),
      ],
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(child: CounterView()),
            const Expanded(child: SampleApp()),
          ],
        ),
      ),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return Scaffold(
          backgroundColor: themeState.backgroundColor,
          appBar: AppBar(title: const Text('Counter + Animation + ThemeBloc')),
          body: Center(
            child: BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                final double boxWidth = state.count == 0 ? 0.0 : 100.0;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'count: ${state.count}',
                      key: const Key('counterText'),
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 16),
                    AnimatedContainer(
                      key: const Key('animatedBox'),
                      width: boxWidth,
                      height: 24,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.linear,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                key: const Key('incrementButton'),
                onPressed: () =>
                    context.read<CounterBloc>().add(IncrementCounter()),
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                key: const Key('toggleThemeButton'),
                onPressed: () => context.read<ThemeBloc>().add(ToggleTheme()),
                child: const Icon(Icons.color_lens),
              ),
            ],
          ),
        );
      },
    );
  }
}
