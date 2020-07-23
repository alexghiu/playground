import 'package:flutter/material.dart';

import 'foo.dart';
import 'bar.dart';
import 'wof.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Foo(),
        '/foo': (context) => Foo(),
        '/bar': (context) => Bar(),
        '/wof': (context) => Wof(),
      },
    );
  }
}
