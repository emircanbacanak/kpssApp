import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/favorite_topics.dart';

class KpssTurkcePage extends StatefulWidget {
  const KpssTurkcePage({super.key});

  @override
  _KpssTurkcePageState createState() => _KpssTurkcePageState();
}

class _KpssTurkcePageState extends State<KpssTurkcePage> {
  final List<Map<String, dynamic>> turkceTopics = [
    {'title': 'Dil Bilgisi', 'pageName': 'KpssDilBilgisiPage'},
    {'title': 'Paragraf', 'pageName': 'KpssParagrafPage'},
    {'title': 'Söz Sanatları', 'pageName': 'KpssSozSanatlariPage'},
    {'title': 'Edebi Terimler', 'pageName': 'KpssEdebiTerimlerPage'},
    {'title': 'Okuma Anlama', 'pageName': 'KpssOkumaAnlamaPage'},
    {'title': 'Yazım Kuralları', 'pageName': 'KpssYazimKurallariPage'},
    {'title': 'Cümle Bilgisi', 'pageName': 'KpssCumleBilgisiPage'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Türkçe'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: turkceTopics.length,
          itemBuilder: (context, index) {
            final topic = turkceTopics[index];
            return GestureDetector(
              onTap: () {
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
                      await FavoriteTopics.toggleFavorite(topic);
                      setState(() {});
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
