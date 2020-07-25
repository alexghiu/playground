import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Move3 extends StatefulWidget {
  @override
  _Move3State createState() => _Move3State();
}

class _Move3State extends State<Move3> {
  Offset _location = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _handlePanUpdate,
      child: Stack(
        children: [
          Positioned(
            top: _location.dy,
            left: _location.dx,
            child: _buildSubject(),
          ),
        ],
      ),
    );
  }

  Widget _buildSubject() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue[400],
      child: Center(
        child: Text('Drag me!'),
      ),
    );
  }

  void _handlePanUpdate(DragUpdateDetails details) {
    setState(() {
      _location = Offset(
        _location.dx + details.delta.dx,
        _location.dy + details.delta.dy,
      );
    });
  }
}
