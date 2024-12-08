import 'package:flutter/material.dart';

class ProVersionPage extends StatefulWidget {
  const ProVersionPage({super.key});

  @override
  State<ProVersionPage> createState() => _ProVersionPageState();
}

class _ProVersionPageState extends State<ProVersionPage> {
  String selectedPlan = "YILLIK"; // Varsayılan seçili plan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Üst Başlık ve Açıklamalar
              const Text(
                "Pro Versiyon Avantajları",
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _FeatureItem(text: "• Daha fazla konu anlatım"),
                    _FeatureItem(text: "• Eksik Konu Analizi"),
                    _FeatureItem(text: "• Güçlü Soru Havuzu"),
                    _FeatureItem(
                        text: "• Yanlış Sorulardan Deneme Sınavı Oluşturma"),
                    _FeatureItem(text: "• En Güncel Olaylar"),
                    _FeatureItem(text: "• KPSS - MEMURLUK üzerine haberler"),
                    _FeatureItem(text: "• KPSS PUAN HESAPLAMA"),
                    _FeatureItem(text: "• KPSS ATAMA LİSTELERİ"),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Abonelik Planları
              const Text(
                "Planlar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),

              // Aylık Kart
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPlan = "AYLIK";
                  });
                },
                child: SubscriptionCard(
                  title: "AYLIK",
                  price: "20 TL",
                  features: const [
                    "• Daha fazla içerik",
                    "• Eksik Konu Analizi",
                  ],
                  backgroundColor: selectedPlan == "AYLIK"
                      ? Colors.orange.shade100
                      : Colors.white,
                  isSelected: selectedPlan == "AYLIK",
                ),
              ),
              const SizedBox(height: 16),

              // Yıllık Kart
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPlan = "YILLIK";
                  });
                },
                child: SubscriptionCard(
                  title: "YILLIK",
                  price: "200 TL",
                  features: const [
                    "• Daha fazla içerik",
                    "• Yıllık al, 2 ay bedava gelsin",
                  ],
                  backgroundColor: selectedPlan == "YILLIK"
                      ? Colors.blue.shade100
                      : Colors.white,
                  isSelected: selectedPlan == "YILLIK",
                  isRecommended: true,
                ),
              ),
              const SizedBox(height: 30),

              // Alt Buton
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Ödeme işlemi için seçili plan
                    print("Seçilen Plan: $selectedPlan");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Pro Versiyona Geç",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Tekil Özellik Liste Öğesi
class _FeatureItem extends StatelessWidget {
  final String text;
  const _FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}

// Abonelik Kartı
class SubscriptionCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final Color backgroundColor;
  final bool isSelected;
  final bool isRecommended;

  const SubscriptionCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.backgroundColor,
    this.isSelected = false,
    this.isRecommended = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            border: isSelected
                ? Border.all(color: Colors.orange, width: 2)
                : Border.all(color: Colors.transparent),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Sol taraf
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.orange : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  for (var feature in features)
                    Text(
                      feature,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                ],
              ),
              // Sağ taraf
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 16), // Önerilen etiketi için alan açar
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Önerilen Etiketi
        if (isRecommended)
          Positioned(
            top: 15, // Hafif üst pozisyonlama
            right: 16, // Kartın sağ üst köşesine hizalama
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Önerilen",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
