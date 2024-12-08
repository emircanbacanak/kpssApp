import 'package:flutter/material.dart';

class CustomLinkText extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback onTap;

  const CustomLinkText({
    super.key,
    required this.text,
    required this.linkText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text: text,
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
                text: linkText,
                style: const TextStyle(color: Colors.blueAccent)),
          ],
        ),
      ),
    );
  }
}
