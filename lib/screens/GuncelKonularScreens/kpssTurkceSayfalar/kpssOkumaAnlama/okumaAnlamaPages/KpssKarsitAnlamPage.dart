import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssKarsitAnlamPage extends StatelessWidget {
  const KpssKarsitAnlamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Karsit Anlam',
      content:
          'Karsit Anlam ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
