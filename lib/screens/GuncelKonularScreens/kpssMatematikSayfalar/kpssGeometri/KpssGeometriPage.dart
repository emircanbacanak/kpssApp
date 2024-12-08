import 'package:flutter/material.dart';

import 'geometriPages/KpssCemberPage.dart';
import 'geometriPages/KpssDairePage.dart';
import 'geometriPages/KpssDikdortgenPage.dart';
import 'geometriPages/KpssUcgenPage.dart';

class KpssGeometriPage extends StatelessWidget {
  const KpssGeometriPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> geometriTopics = [
      {'title': 'Dikdörtgen', 'page': const KpssDikdortgenPage()},
      {'title': 'Üçgen', 'page': const KpssUcgenPage()},
      {'title': 'Çember', 'page': const KpssCemberPage()},
      {'title': 'Daire', 'page': const KpssDairePage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Geometri Konuları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: geometriTopics.length,
          itemBuilder: (context, index) {
            final topic = geometriTopics[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(topic['title']),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => topic['page']),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
