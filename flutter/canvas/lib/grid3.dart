import 'dart:ui';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'dart:developer';

class Grid3 extends StatefulWidget {
  _Grid3State createState() => _Grid3State();
}

class _Grid3State extends State<Grid3> {
  MemoryImage _image;

  @override
  void initState() {
    super.initState();
    _prepareBackground();
  }

  Future<void> _prepareBackground() async {
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
    setState(() {
      _image = MemoryImage(Uint8List.view(bd.buffer));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 800,
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
