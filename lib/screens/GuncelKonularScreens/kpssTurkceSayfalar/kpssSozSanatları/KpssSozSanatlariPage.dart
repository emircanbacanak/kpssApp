import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import '../../../../ortak/common_widgets.dart';
import 'sozSanatlariPages/KpssAsirmaPage.dart';
import 'sozSanatlariPages/KpssIstiarePage.dart';
import 'sozSanatlariPages/KpssMetaforPage.dart';
import 'sozSanatlariPages/KpssPersonifikasyonPage.dart';
import 'sozSanatlariPages/KpssSozSanatlariTanimiPage.dart';
import 'sozSanatlariPages/KpssTesbihPage.dart';

class KpssSozSanatlariPage extends StatelessWidget {
  const KpssSozSanatlariPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sozSanatlariTopics = [
      {
        'title': 'Söz Sanatlarının Tanımı',
        'page': const KpssSozSanatlariTanimiPage()
      },
      {'title': 'Aşırma', 'page': const KpssAsirmaPage()},
      {'title': 'İstiare', 'page': const KpssIstiarePage()},
      {'title': 'Teşbih', 'page': const KpssTesbihPage()},
      {'title': 'Personifikasyon', 'page': const KpssPersonifikasyonPage()},
      {'title': 'Metafor', 'page': const KpssMetaforPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Söz Sanatları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Söz Sanatları Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: sozSanatlariTopics.length,
                itemBuilder: (context, index) {
                  String topic = sozSanatlariTopics[index]['title'];
                  Widget page = sozSanatlariTopics[index]['page'];
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
