import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/mars.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'Mars',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32.0, color: Colors.white),
        ),
      ),
    ),
  );
}
