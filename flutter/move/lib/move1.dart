import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Move1 extends StatefulWidget {
  @override
  _Move1State createState() => _Move1State();
}

class _Move1State extends State<Move1> {
  final Matrix4 _transform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: _transform,
      alignment: Alignment.topLeft,
      child: Listener(
        child: _buildSubject(),
        onPointerMove: _handlePointerMove,
      ),
    );
  }

  Widget _buildSubject() {
    return SizedBox(
      width: 100,
      height: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green[400],
        ),
        child: Center(
          child: Text('Drag me!'),
        ),
      ),
    );
  }

  void _handlePointerMove(PointerMoveEvent event) {
    setState(() {
      _transform.translate(event.delta.dx, event.delta.dy);
    });
  }
}
