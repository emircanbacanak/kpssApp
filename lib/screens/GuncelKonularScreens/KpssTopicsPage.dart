import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/common_widgets.dart';
import 'package:kpssapp/ortak/custom_title.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssCografyaSayfalar/KpssCografyaPage.dart';

import 'kpssAlanBilgisiSayfalar/KpssAlanBilgisiPage.dart';
import 'kpssEgitimBilimleriSayfalar/KpssEgitimBilimleriPage.dart';
import 'kpssGenelKulturSayfalar/KpssGenelKulturPage.dart';
import 'kpssGenelYetenekSayfalar/KpssGenelYetenekPage.dart';
import 'kpssMatematikSayfalar/KpssMatematikPage.dart';
import 'kpssTarihSayfalar/KpssTarihPage.dart';
import 'kpssTurkceSayfalar/KpssTurkcePage.dart';
import 'kpssVatandaslikSayfalar/KpssVatandaslikPage.dart';

class KpssTopicsPage extends StatelessWidget {
  const KpssTopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> kpssTopics = [
      {'title': 'Türkçe', 'page': const KpssTurkcePage()},
      {'title': 'Matematik', 'page': const KpssMatemetikPage()},
      {'title': 'Tarih', 'page': const KpssTarihPage()},
      {'title': 'Coğrafya', 'page': const KpssCografyaPage()},
      {'title': 'Vatandaşlık', 'page': const KpssVatandaslikPage()},
      {'title': 'Eğitim Bilimleri', 'page': const KpssEgitimBilimleriPage()},
      {'title': 'Alan Bilgisi', 'page': const KpssAlanBilgisiPage()},
      {'title': 'Genel Kültür', 'page': const KpssGenelKulturPage()},
      {'title': 'Genel Yetenek', 'page': const KpssGenelYetenekPage()},
    ];

    return Scaffold(
      appBar: AppBar(
          title: const Text('KPSS Topics'), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitle(titleText: 'KPSS Konuları'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: kpssTopics.length,
                itemBuilder: (context, index) {
                  String topic = kpssTopics[index]['title'];
                  Widget? page = kpssTopics[index]['page'];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TopicCard(
                      title: topic,
                      onTap: () {
                        // Eğer page değeri null değilse tıklanabilir yap
                        if (page != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => page,
                            ),
                          );
                        } else {
                          // Sayfa yoksa
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Bu konu için henüz sayfa mevcut değil!'),
                            ),
                          );
                        }
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
