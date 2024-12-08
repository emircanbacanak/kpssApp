import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'problemlerPages/KpssHizPage.dart';
import 'problemlerPages/KpssIsGuclukPage.dart';
import 'problemlerPages/KpssKarisikProblemlerPage.dart';
import 'problemlerPages/KpssOranOrantiPage.dart';
import 'problemlerPages/KpssYuzdeKarZararPage.dart';

class KpssProblemlerPage extends StatelessWidget {
  const KpssProblemlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> problemTopics = [
      {'title': 'Oran Orantı', 'page': const KpssOranOrantiPage()},
      {'title': 'Hız Problemleri', 'page': const KpssHizPage()},
      {'title': 'İş ve Güçlük', 'page': const KpssIsGuclukPage()},
      {'title': 'Yüzde, Kar-Zarar', 'page': const KpssYuzdeKarZararPage()},
      {
        'title': 'Karışık Problemler',
        'page': const KpssKarisikProblemlerPage()
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Problemler'),
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
                itemCount: problemTopics.length,
                itemBuilder: (context, index) {
                  String topic = problemTopics[index]['title'];
                  Widget page = problemTopics[index]['page'];
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
