import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/favorite_topics.dart';

class KpssMatemetikPage extends StatefulWidget {
  const KpssMatemetikPage({super.key});

  @override
  _KpssMatemetikPageState createState() => _KpssMatemetikPageState();
}

class _KpssMatemetikPageState extends State<KpssMatemetikPage> {
  final List<Map<String, dynamic>> matematikTopics = [
    {'title': 'Temel Kavramlar', 'pageName': 'KpssTemelKavramlarPage'},
    {'title': 'Sayılar', 'pageName': 'KpssSayilarPage'},
    {'title': 'Cebir', 'pageName': 'KpssCebirPage'},
    {'title': 'Geometri', 'pageName': 'KpssSayilarPage'},
    {'title': 'Problemler', 'pageName': 'KpssProblemlerPage'},
    {'title': 'Fonksiyonlar', 'pageName': 'KpssFonksiyonlarPage'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KPSS Matematik'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: matematikTopics.length,
          itemBuilder: (context, index) {
            final topic = matematikTopics[index];
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
