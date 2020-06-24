import "package:flutter/material.dart";

void main() {
  runApp(Sample());
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text('Hello world',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 32, color: Colors.black87)),
      ),
    );
  }
}
