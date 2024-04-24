import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 224, 214, 72)
              ),
      ),
    ),
  );
}
// Classes good to be separated onto another file, helps keep code clean, one main function per file
