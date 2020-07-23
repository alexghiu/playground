import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context));
    final arguments = ModalRoute.of(context).settings.arguments as BarArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar - #${arguments.id}, ${arguments.language}'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/wof');
          },
          child: Text('Go "wof"'),
        ),
      ),
    );
  }
}

class BarArguments {
  final int id;
  final String language;

  BarArguments(this.id, this.language);
}
