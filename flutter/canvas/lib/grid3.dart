import 'dart:ui';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'dart:developer';

/*
class Grid3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    canvas.drawRect(
      Rect.fromLTWH(5, 5, 1, 1),
      Paint()..color = Colors.red[400],
    );
    final picture = recorder.endRecording();
    final image = picture.toImage(10, 10);
  }
}
*/

class Grid3 extends StatefulWidget {
  _Grid3State createState() => _Grid3State();
}

class _Grid3State extends State<Grid3> {
  MemoryImage _image;

  @override
  void initState() {
    super.initState();
    print('_Grid3State.initState');
    _prepareBackground();
  }

  Future<void> _prepareBackground() async {
    print('_Grid3State._prepareBackground');
    final side = 10.0;
    final weight = 1.0;
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    canvas.drawRect(
      Rect.fromLTWH(side - weight, side - weight, weight, weight),
      Paint()..color = Colors.grey[400],
    );
    final picture = recorder.endRecording();
    final image = await picture.toImage(side.toInt(), side.toInt());
    final bd = await image.toByteData(format: ImageByteFormat.png);
    print(_image);
    print(_image == null);
    print(_image != null);
    setState(() {
      _image = MemoryImage(Uint8List.view(bd.buffer));
      print('_Grid3State._prepareBackground.after');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 300,
      child: DecoratedBox(
        decoration: BoxDecoration(
          // color: _image == null ? Colors.yellow[300] : Colors.blue[300],
          image: _image != null
              ? DecorationImage(
                  image: _image,
                  repeat: ImageRepeat.repeat,
                  alignment: Alignment.topLeft,
                )
              : null,
        ),
      ),
    );
  }
}
