import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'yazimKurallariPages/KpssBaglaclarinYazimiPage.dart';
import 'yazimKurallariPages/KpssBuyukHarfKullanimiPage.dart';
import 'yazimKurallariPages/KpssEklerinYazimiPage.dart';
import 'yazimKurallariPages/KpssKisaltmalarPage.dart';
import 'yazimKurallariPages/KpssOzelIsimlerPage.dart';
import 'yazimKurallariPages/KpssOzelKurallarPage.dart';
import 'yazimKurallariPages/KpssSayiYazimiPage.dart';
import 'yazimKurallariPages/KpssSesOlaylariPage.dart';

class KpssYazimKurallariPage extends StatelessWidget {
  const KpssYazimKurallariPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> yazimKurallariTopics = [
      {
        'title': 'Büyük Harflerin Kullanımı',
        'page': const KpssBuyukHarfKullanimiPage()
      },
      {
        'title': 'Bağlaçların Yazımı',
        'page': const KpssBaglaclarinYazimiPage()
      },
      {'title': 'Kısaltmalar', 'page': const KpssKisaltmalarPage()},
      {'title': 'Özel İsimlerin Yazımı', 'page': const KpssOzelIsimlerPage()},
      {'title': 'Eklerin Yazımı', 'page': const KpssEklerinYazimiPage()},
      {'title': 'Sayıların Yazımı', 'page': const KpssSayiYazimiPage()},
      {'title': 'Ses Olayları', 'page': const KpssSesOlaylariPage()},
      {'title': 'Diğer Özel Kurallar', 'page': const KpssOzelKurallarPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Yazım Kuralları'),
        backgroundColor: Colors.teal, // AppBar rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(
                titleText: 'KPSS Yazım Kuralları Konuları'), // Başlık
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: yazimKurallariTopics.length,
                itemBuilder: (context, index) {
                  String topic = yazimKurallariTopics[index]['title'];
                  Widget page = yazimKurallariTopics[index]['page'];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TopicCard(
                      title: topic,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page,
                          ),
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
