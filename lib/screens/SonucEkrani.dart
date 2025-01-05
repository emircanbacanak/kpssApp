import 'package:flutter/material.dart';

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
    final net = dogruSayisi - (yanlisSayisi / 4);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sınav Sonucunuz",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "PUANINIZ",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "$yuzdelik / 100",
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              _buildStatRow("DOĞRU SAYISI", dogruSayisi),
              _buildStatRow("YANLIŞ SAYISI", yanlisSayisi),
              _buildStatRow("NET", net.toStringAsFixed(2)),
              const SizedBox(height: 40),
              // Button
              _buildYellowButton(
                text: "ANASAYFA",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(String title, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Expanded(flex: 1, child: SizedBox()),
          const Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              value.toString(),
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Expanded(flex: 1, child: SizedBox()),
          const Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }

  Widget _buildYellowButton(
      {required String text, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
