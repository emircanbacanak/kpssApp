import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'dilBilgisiPages/baglaclar_page.dart';
import 'dilBilgisiPages/cumle_yapisi_page.dart';
import 'dilBilgisiPages/edatlar_page.dart';
import 'dilBilgisiPages/fiil_catisi_page.dart';
import 'dilBilgisiPages/isimler_page.dart';
import 'dilBilgisiPages/sifatlar_page.dart';
import 'dilBilgisiPages/zamirler_page.dart';
import 'dilBilgisiPages/zarflar_page.dart';

class KpssDilBilgisiPage extends StatelessWidget {
  const KpssDilBilgisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dilBilgisiTopics = [
      {'title': 'Fiil Çatısı', 'page': const FiilCatisiPage()},
      {'title': 'Zamirler', 'page': const ZamirlerPage()},
      {'title': 'Sıfatlar', 'page': const SifatlarPage()},
      {'title': 'İsimler', 'page': const IsimlerPage()},
      {'title': 'Zarflar', 'page': const ZarflarPage()},
      {'title': 'Edatlar', 'page': const EdatlarPage()},
      {'title': 'Bağlaçlar', 'page': const BaglaclarPage()},
      {'title': 'Cümle Yapısı', 'page': const CumleYapisiPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Dil Bilgisi'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'Dil Bilgisi Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dilBilgisiTopics.length,
                itemBuilder: (context, index) {
                  String topic = dilBilgisiTopics[index]['title'];
                  Widget page = dilBilgisiTopics[index]['page'];
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
