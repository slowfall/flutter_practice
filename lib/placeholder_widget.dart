import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
        body: Center(
          child: Text('Hello World'),
        ),
      );
  }
}