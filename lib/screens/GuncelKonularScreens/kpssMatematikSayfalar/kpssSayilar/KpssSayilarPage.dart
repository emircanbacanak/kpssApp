import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'sayilarPages/KpssAsalSayilarPage.dart';
import 'sayilarPages/KpssBolunebilmeKurallariPage.dart';
import 'sayilarPages/KpssSayiTurleriPage.dart';
import 'sayilarPages/KpssTekCiftSayilarPage.dart';

class KpssSayilarPage extends StatelessWidget {
  const KpssSayilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sayilarTopics = [
      {'title': 'Sayı Türleri', 'page': const KpssSayiTurleriPage()},
      {'title': 'Asal Sayılar', 'page': const KpssAsalSayilarPage()},
      {'title': 'Tek ve Çift Sayılar', 'page': const KpssTekCiftSayilarPage()},
      {
        'title': 'Bölünebilme Kuralları',
        'page': const KpssBolunebilmeKurallariPage()
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Sayılar Konuları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Sayılar Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: sayilarTopics.length,
                itemBuilder: (context, index) {
                  String topic = sayilarTopics[index]['title'];
                  Widget page = sayilarTopics[index]['page'];
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
