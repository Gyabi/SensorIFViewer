import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SlideLayoutSwitcher()));

class SlideLayoutSwitcher extends StatefulWidget {
  @override
  _SlideLayoutSwitcherState createState() => _SlideLayoutSwitcherState();
}

class _SlideLayoutSwitcherState extends State<SlideLayoutSwitcher> {
  bool _switched = false;

  // アニメーションの共通設定
  final _duration = Duration(milliseconds: 600);
  final _curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('スライド移動レイアウト')),
      body: Stack(
        children: [
          // Item 1
          AnimatedAlign(
            duration: _duration,
            curve: _curve,
            alignment: Alignment.topLeft,
            child: _buildItem('Item 1', Colors.red),
          ),

          // Item 2
          AnimatedAlign(
            duration: _duration,
            curve: _curve,
            alignment: _switched ? Alignment.topRight : Alignment.centerLeft,
            child: _buildItem('Item 2', Colors.blue),
          ),

          // Item 3
          AnimatedAlign(
            duration: _duration,
            curve: _curve,
            alignment: _switched ? Alignment.center : Alignment.bottomLeft,
            child: _buildItem('Item 3', Colors.green),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _switched = !_switched),
        child: Icon(Icons.swap_horiz),
      ),
    );
  }

  Widget _buildItem(String label, Color color) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 100,
      height: 100,
      color: color,
      child: Center(
        child: Text(label, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class FixedBoxItemMover extends StatefulWidget {
  @override
  _FixedBoxItemMoverState createState() => _FixedBoxItemMoverState();
}

class _FixedBoxItemMoverState extends State<FixedBoxItemMover> {
  bool _switched = false;

  // 箱（場所）を固定座標で定義
  final Map<String, Offset> leftPositions1 = {
    'item1': Offset(20, 100),
    'item2': Offset(20, 200),
  };

  final Map<String, Offset> rightPositions1 = {'item3': Offset(220, 150)};

  final Map<String, Offset> leftPositions2 = {'item1': Offset(20, 150)};

  final Map<String, Offset> rightPositions2 = {
    'item2': Offset(220, 100),
    'item3': Offset(220, 200),
  };

  // アイテムの現在座標を取得（IDで振り分け）
  Offset _getItemPosition(String id) {
    if (!_switched) {
      return leftPositions1[id] ?? rightPositions1[id] ?? Offset.zero;
    } else {
      return leftPositions2[id] ?? rightPositions2[id] ?? Offset.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    // アイテムリスト
    final items = ['item1', 'item2', 'item3'];

    return Scaffold(
      appBar: AppBar(title: Text('ID指定で固定座標スライド移動')),
      body: Stack(
        children: items.map((id) {
          final pos = _getItemPosition(id);
          return AnimatedPositioned(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            left: pos.dx,
            top: pos.dy,
            width: 150,
            height: 60,
            child: Container(
              key: ValueKey(id),
              color: id == 'item1'
                  ? Colors.red
                  : id == 'item2'
                  ? Colors.blue
                  : Colors.green,
              alignment: Alignment.center,
              child: Text(
                id,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _switched = !_switched),
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
