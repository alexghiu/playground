import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 100),
      painter: _GridPainter(),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print('_GridPainter.paint');
    final gap = 10.0;
    for (var x = 0; x < size.width / gap; x++) {
      for (var y = 0; y < size.height / gap; y++) {
        canvas.drawRect(
          Rect.fromLTWH(x * gap, y * gap, 1, 1),
          Paint()..color = Colors.red[400],
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
