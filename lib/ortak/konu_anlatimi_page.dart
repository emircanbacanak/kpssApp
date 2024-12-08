import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/custom_title.dart';

class KonuAnlatimiPage extends StatelessWidget {
  final String title;
  final String content;

  const KonuAnlatimiPage({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitle(titleText: title),
            const SizedBox(height: 20),
            Text(content, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
