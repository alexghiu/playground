import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Move2 extends StatefulWidget {
  @override
  _Move2State createState() => _Move2State();
}

class _Move2State extends State<Move2> {
  Matrix4 _transform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: _transform,
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onPanUpdate: _handlePanUpdate,
        child: _buildSubject(),
      ),
    );
  }

  Widget _buildSubject() {
    return SizedBox(
      width: 100,
      height: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.red[400],
        ),
        child: Center(
          child: Text('Drag me!'),
        ),
      ),
    );
  }

  void _handlePanUpdate(DragUpdateDetails details) {
    setState(() {
      _transform.translate(details.delta.dx, details.delta.dy);
    });
  }
}
