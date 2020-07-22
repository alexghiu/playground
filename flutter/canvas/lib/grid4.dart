import 'package:flutter/material.dart';

class Grid4 extends StatefulWidget {
  @override
  _Grid4State createState() => _Grid4State();
}

class _Grid4State extends State<Grid4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 1400,
        height: 800,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.repeat,
              image: AssetImage('assets/tile.png'),
            ),
          ),
        ),
      ),
    );
  }
}
