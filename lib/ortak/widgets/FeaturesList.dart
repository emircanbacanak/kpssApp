import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Pro Versiyon Avantajları",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: const Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FeatureItem(text: "• Daha fazla konu anlatım"),
                _FeatureItem(text: "• Eksik Konu Analizi"),
                _FeatureItem(text: "• Güçlü Soru Havuzu"),
                _FeatureItem(text: "• Yanlış Sorulardan Deneme Sınavı"),
                _FeatureItem(text: "• En Güncel Olaylar"),
                _FeatureItem(text: "• KPSS - MEMURLUK üzerine haberler"),
                _FeatureItem(text: "• KPSS PUAN HESAPLAMA"),
                _FeatureItem(text: "• KPSS ATAMA LİSTELERİ"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String text;
  const _FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}
