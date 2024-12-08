import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String titleText;

  const CustomTitle({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[800] ?? Colors.blueGrey),
    );
  }
}
