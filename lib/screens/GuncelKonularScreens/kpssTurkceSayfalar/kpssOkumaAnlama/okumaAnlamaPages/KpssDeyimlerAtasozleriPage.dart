import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssDeyimlerAtasozleriPage extends StatelessWidget {
  const KpssDeyimlerAtasozleriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Deyimler Atasozleri',
      content:
          'DeyimlerAtasozleri ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
