import 'package:flutter/material.dart';

class EkonomiPage extends StatelessWidget {
  const EkonomiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ekonomi')),
      body: const Center(child: Text('Ekonomi içeriği burada yer alacak.')),
    );
  }
}
