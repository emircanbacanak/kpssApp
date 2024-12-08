import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class ZarflarPage extends StatelessWidget {
  const ZarflarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Zarflar Konu Anlatımı',
      content: 'Zarflar ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
