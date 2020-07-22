import 'package:flutter/material.dart';

class Grid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image = DecorationImage(
      repeat: ImageRepeat.repeat,
      image: AssetImage('assets/tile.png'),
    );
    return SizedBox(
      width: 300,
      height: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          image: image,
        ),
      ),
    );
  }
}
