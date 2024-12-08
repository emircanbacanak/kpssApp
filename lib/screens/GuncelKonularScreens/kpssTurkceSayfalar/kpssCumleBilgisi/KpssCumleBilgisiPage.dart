import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'cumleBilgisiPages/KpssCumledeAnlamIliskileriPage.dart';
import 'cumleBilgisiPages/KpssCumledeAnlamPage.dart';
import 'cumleBilgisiPages/KpssCumledeBicimPage.dart';
import 'cumleBilgisiPages/KpssCumledeOgelerPage.dart';
import 'cumleBilgisiPages/KpssCumledeYargiPage.dart';

class KpssCumleBilgisiPage extends StatelessWidget {
  const KpssCumleBilgisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cumleBilgisiTopics = [
      {'title': 'Cümlede Anlam', 'page': const KpssCumledeAnlamPage()},
      {'title': 'Cümlede Ögeler', 'page': const KpssCumledeOgelerPage()},
      {
        'title': 'Cümlede Anlam İlişkileri',
        'page': const KpssCumledeAnlamIliskileriPage()
      },
      {'title': 'Cümlede Yargı', 'page': const KpssCumledeYargiPage()},
      {'title': 'Cümlede Biçim', 'page': const KpssCumledeBicimPage()},
    ];

    return Scaffold(
      appBar: AppBar(
          title: const Text('KPSS Cümle Bilgisi Konuları'),
          backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Cümle Bilgisi Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cumleBilgisiTopics.length,
                itemBuilder: (context, index) {
                  String topic = cumleBilgisiTopics[index]['title'];
                  Widget page = cumleBilgisiTopics[index]['page'];
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
