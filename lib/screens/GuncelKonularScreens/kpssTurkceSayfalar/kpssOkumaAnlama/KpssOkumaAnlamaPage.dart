import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/custom_title.dart';

import '../../../../ortak/common_widgets.dart';
import 'okumaAnlamaPages/KpssAnaFikirPage.dart';
import 'okumaAnlamaPages/KpssAnlamButunluguPage.dart';
import 'okumaAnlamaPages/KpssAnlatimTarziPage.dart';
import 'okumaAnlamaPages/KpssDeyimlerAtasozleriPage.dart';
import 'okumaAnlamaPages/KpssKarsitAnlamPage.dart';
import 'okumaAnlamaPages/KpssOrneklemePage.dart';
import 'okumaAnlamaPages/KpssOznelNesnelPage.dart';
import 'okumaAnlamaPages/KpssParagrafYapisiPage.dart';
import 'okumaAnlamaPages/KpssSozcuklerArasiIliskiPage.dart';

class KpssOkumaAnlamaPage extends StatelessWidget {
  const KpssOkumaAnlamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> okumaAnlamaTopics = [
      {
        'title': 'Ana Fikir',
        'page': const KpssAnaFikirPage(),
      },
      {'title': 'Paragraf Yapisi', 'page': const KpssParagrafYapisiPage()},
      {'title': 'Anlam Butunlugu', 'page': const KpssAnlamButunluguPage()},
      {'title': 'Anlatim Tarzi', 'page': const KpssAnlatimTarziPage()},
      {
        'title': 'Deyimler Atasozleri',
        'page': const KpssDeyimlerAtasozleriPage()
      },
      {
        'title': 'Sozcukler Arasi Iliski',
        'page': const KpssSozcuklerArasiIliskiPage()
      },
      {'title': 'Ornekleme', 'page': const KpssOrneklemePage()},
      {'title': 'Oznel Nesnel', 'page': const KpssOznelNesnelPage()},
      {'title': 'Karsit Anlam', 'page': const KpssKarsitAnlamPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Okuma Anlama'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Okuma Anlama Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: okumaAnlamaTopics.length,
                itemBuilder: (context, index) {
                  String topic = okumaAnlamaTopics[index]['title'];
                  Widget page = okumaAnlamaTopics[index]['page'];
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
