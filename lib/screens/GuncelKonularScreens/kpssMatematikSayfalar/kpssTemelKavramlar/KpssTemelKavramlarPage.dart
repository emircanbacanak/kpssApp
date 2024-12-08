import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import 'temelKavramlarPages/KpssDogalSayilarPage.dart';
import 'temelKavramlarPages/KpssIslemOnceligiPage.dart';
import 'temelKavramlarPages/KpssIslemlerPage.dart';
import 'temelKavramlarPages/KpssPozitifNegatifPage.dart';
import 'temelKavramlarPages/KpssTamSayilarPage.dart';

class KpssTemelKavramlarPage extends StatelessWidget {
  const KpssTemelKavramlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> temelKavramlarTopics = [
      {'title': 'Doğal Sayılar', 'page': const KpssDogalSayilarPage()},
      {'title': 'Tam Sayılar', 'page': const KpssTamSayilarPage()},
      {
        'title': 'Pozitif ve Negatif Sayılar',
        'page': const KpssPozitifNegatifPage(),
      },
      {'title': 'İşlemler', 'page': const KpssIslemlerPage()},
      {'title': 'İşlem Önceliği', 'page': const KpssIslemOnceligiPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Temel Kavramlar'),
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
                itemCount: temelKavramlarTopics.length,
                itemBuilder: (context, index) {
                  String topic = temelKavramlarTopics[index]['title'];
                  Widget page = temelKavramlarTopics[index]['page'];
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
