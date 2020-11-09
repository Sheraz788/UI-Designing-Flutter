import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final Color color;

  Messages(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
