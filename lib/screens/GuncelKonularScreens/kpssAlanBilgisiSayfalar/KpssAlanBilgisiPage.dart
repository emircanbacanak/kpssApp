import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/favorite_topics.dart';

class KpssAlanBilgisiPage extends StatefulWidget {
  const KpssAlanBilgisiPage({super.key});

  @override
  _KpssAlanBilgisiPageState createState() => _KpssAlanBilgisiPageState();
}

class _KpssAlanBilgisiPageState extends State<KpssAlanBilgisiPage> {
  final List<Map<String, dynamic>> alanBilgisiTopics = [
    {'title': 'Anayasa Hukuku', 'pageName': 'KpssAnayasaHukukuPage'},
    {'title': 'İdare Hukuku', 'pageName': 'KpssIdareHukukuPage'},
    {'title': 'Ceza Hukuku', 'pageName': 'KpssCezaHukukuPage'},
    {'title': 'Medeni Hukuk', 'pageName': 'KpssMedeniHukukPage'},
    {'title': 'Ekonomi', 'pageName': 'EkonomiPage'},
  ];

  Future<void> _toggleFavorite(Map<String, dynamic> topic) async {
    // Favori ekleme veya çıkarma işlemi
    await FavoriteTopics.toggleFavorite(topic);
    setState(() {}); // Ekranı güncellemek için
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Alan Bilgisi Konuları'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: alanBilgisiTopics.length,
          itemBuilder: (context, index) {
            final topic = alanBilgisiTopics[index];
            return GestureDetector(
              onTap: () {
                // Konuya tıkladığınızda ilgili sayfaya geçiş yapar
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FavoriteTopics.getPageWidget(topic['pageName']),
                  ),
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 6,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(
                      FavoriteTopics.isFavorite(topic['title'])
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await _toggleFavorite(topic); // Favori durumunu güncelle
                    },
                  ),
                  title: Text(
                    topic['title'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                    ),
                  ),
                  trailing:
                      const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
