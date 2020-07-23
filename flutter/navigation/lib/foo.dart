import 'package:flutter/material.dart';

import 'bar.dart';

class Foo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/bar',
              arguments: BarArguments(100, 'english'),
            );
          },
          child: Text('Go "bar"'),
        ),
      ),
    );
  }
}
