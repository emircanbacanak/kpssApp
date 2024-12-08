import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'edebiTerimlerPages/KpssHusniTalilPage.dart';
import 'edebiTerimlerPages/KpssIroniPage.dart';
import 'edebiTerimlerPages/KpssIstiarePage.dart';
import 'edebiTerimlerPages/KpssKinayePage.dart';
import 'edebiTerimlerPages/KpssMecazPage.dart';
import 'edebiTerimlerPages/KpssMecaziMurselPage.dart';
import 'edebiTerimlerPages/KpssMubalagaPage.dart';
import 'edebiTerimlerPages/KpssTesbihPage.dart';
import 'edebiTerimlerPages/KpssTezatPage.dart';

class KpssEdebiTerimlerPage extends StatelessWidget {
  const KpssEdebiTerimlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> edebiTerimlerTopics = [
      {'title': 'Mecaz', 'page': const KpssMecazPage()},
      {'title': 'Kinaye', 'page': const KpssKinayePage()},
      {'title': 'Tezat', 'page': const KpssTezatPage()},
      {'title': 'İroni', 'page': const KpssIroniPage()},
      {'title': 'Mübalağa', 'page': const KpssMubalagaPage()},
      {'title': 'Teşbih', 'page': const KpssTesbihPage()},
      {'title': 'İstiare', 'page': const KpssIstiarePage()},
      {'title': 'Mecaz-ı Mürsel', 'page': const KpssMecaziMurselPage()},
      {'title': 'Hüsn-i Talil', 'page': const KpssHusniTalilPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Edebi Terimler'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Edebi Terimler Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: edebiTerimlerTopics.length,
                itemBuilder: (context, index) {
                  String topic = edebiTerimlerTopics[index]['title'];
                  Widget page = edebiTerimlerTopics[index]['page'];
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
