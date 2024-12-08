import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import '../../../../ortak/common_widgets.dart';
import 'paragrafPages/KpssParagrafAnlamiPage.dart';
import 'paragrafPages/KpssParagrafSorulariPage.dart';
import 'paragrafPages/KpssParagrafYapisiPage.dart';
import 'paragrafPages/KpssParagraftaAnaDusuncePage.dart';
import 'paragrafPages/KpssParagraftaAnlatimTeknikleriPage.dart';
import 'paragrafPages/KpssParagraftaYardimciDusuncePage.dart';

class KpssParagrafPage extends StatelessWidget {
  const KpssParagrafPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> paragrafTopics = [
      {'title': 'Paragrafın Anlamı', 'page': const KpssParagrafAnlamiPage()},
      {'title': 'Paragrafın Yapısı', 'page': const KpssParagrafYapisiPage()},
      {
        'title': 'Paragrafta Anlatım Teknikleri',
        'page': const KpssParagraftaAnlatimTeknikleriPage()
      },
      {
        'title': 'Paragrafta Ana Düşünce',
        'page': const KpssParagraftaAnaDusuncePage()
      },
      {
        'title': 'Paragrafta Yardımcı Düşünce',
        'page': const KpssParagraftaYardimciDusuncePage()
      },
      {
        'title': 'Paragraf Soruları Çözme Teknikleri',
        'page': const KpssParagrafSorulariPage()
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Paragraf Konuları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Paragraf Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: paragrafTopics.length,
                itemBuilder: (context, index) {
                  String topic = paragrafTopics[index]['title'];
                  Widget page = paragrafTopics[index]['page'];
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
