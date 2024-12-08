import 'package:flutter/material.dart';

import '../screens/SoruCevapSayfasi.dart';

class SonucEkrani extends StatelessWidget {
  final int toplamSoru;
  final int dogruSayisi;
  final int yanlisSayisi;
  final int bosSayisi;
  final List<Map<String, dynamic>> sorular;
  final String konuAdi;

  const SonucEkrani({
    required this.toplamSoru,
    required this.dogruSayisi,
    required this.yanlisSayisi,
    required this.bosSayisi,
    required this.sorular,
    required this.konuAdi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final yuzdelik = ((dogruSayisi / toplamSoru) * 100).toStringAsFixed(2);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuçlar"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Sonuç Tablosu",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              DataTable(
                columnSpacing: 40.0,
                headingRowColor: WidgetStateColor.resolveWith(
                  (states) => Colors.teal.shade100,
                ),
                columns: const [
                  DataColumn(
                    label: Text(
                      'Kategori',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Değer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      const DataCell(Text("Toplam Soru")),
                      DataCell(Text(toplamSoru.toString())),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(Text("Doğru Sayısı")),
                      DataCell(Text(dogruSayisi.toString())),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(Text("Yanlış Sayısı")),
                      DataCell(Text(yanlisSayisi.toString())),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(Text("Boş Sayısı")),
                      DataCell(Text(bosSayisi.toString())),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(Text("Başarı Yüzdesi")),
                      DataCell(Text("$yuzdelik%")),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SoruCevapSayfasi(
                        konuAdi: konuAdi, // Hangi konuya dönüleceği bilgisi
                        sorular: sorular, // Sorular listesi
                      ),
                    ),
                  );
                },
                child: const Text("Tekrar Çöz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
