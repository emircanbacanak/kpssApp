import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'fonksiyonlarPages/KpssLogaritmaPage.dart';
import 'fonksiyonlarPages/KpssPolinomlarPage.dart';
import 'fonksiyonlarPages/KpssTemelFonksiyonlarPage.dart';
import 'fonksiyonlarPages/KpssTurevPage.dart';

class KpssFonksiyonlarPage extends StatelessWidget {
  const KpssFonksiyonlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fonksiyonlarTopics = [
      {
        'title': 'Temel Fonksiyonlar',
        'page': const KpssTemelFonksiyonlarPage()
      },
      {'title': 'Polinomlar', 'page': const KpssPolinomlarPage()},
      {'title': 'Logaritma', 'page': const KpssLogaritmaPage()},
      {'title': 'Türev', 'page': const KpssTurevPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Fonksiyonlar Konuları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Temel Kavramlar Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: fonksiyonlarTopics.length,
                itemBuilder: (context, index) {
                  String topic = fonksiyonlarTopics[index]['title'];
                  Widget page = fonksiyonlarTopics[index]['page'];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TopicCard(
                      title: topic,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
