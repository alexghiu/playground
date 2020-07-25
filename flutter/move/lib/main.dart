import 'package:flutter/material.dart';

import 'move1.dart';
import 'move2.dart';

void main() {
  runApp(MaterialApp(
    title: 'Move',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Move experiment'),
      ),
      // body: Move1(),
      body: Move2(),
    ),
  ));
}
