import "package:flutter/material.dart";

void main() {
  runApp(Sample());
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter layout demo",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter layout demo"),
          ),
          body: Center(
            child: Text("Hello world"),
          )),
    );
  }
}
