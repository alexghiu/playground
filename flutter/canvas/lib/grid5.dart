import 'package:flutter/material.dart';

class Grid5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image = DecorationImage(
      alignment: Alignment.topLeft,
      repeat: ImageRepeat.repeat,
      image: AssetImage('assets/tile.png'),
    );

    return Center(
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(40.0),
        constrained: false,
        child: SizedBox(
          width: 2000,
          height: 4000,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: image,
              border: Border.all(
                color: Colors.grey[200],
              ),
            ),
            child: Center(
              child: Container(
                color: Colors.blue[400],
                child: Text('Hello world'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
