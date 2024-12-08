import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssCebir/cebirPages/KpssDenklemlerPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssCebir/cebirPages/KpssEkokEbobPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssCebir/cebirPages/KpssMutlakDegerPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssCebir/cebirPages/KpssOranOrantilarPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssTemelKavramlar/temelKavramlarPages/KpssPozitifNegatifPage.dart';

class KpssCebirPage extends StatelessWidget {
  const KpssCebirPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cebirTopics = [
      {'title': 'Denklemler', 'page': const KpssDenklemlerPage()},
      {'title': 'Ebob ve Ekok', 'page': const KpssEkokEbobPage()},
      {
        'title': 'Pozitif ve Negatif Sayılar',
        'page': const KpssPozitifNegatifPage()
      },
      {'title': 'Mutlak Değer', 'page': const KpssMutlakDegerPage()},
      {'title': 'Oran Orantı', 'page': const KpssOranOrantilarPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cebir Konuları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'Cebir Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cebirTopics.length,
                itemBuilder: (context, index) {
                  String topic = cebirTopics[index]['title'];
                  Widget page = cebirTopics[index]['page'];
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
