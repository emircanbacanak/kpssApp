import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class SifatlarPage extends StatelessWidget {
  const SifatlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Sıfatlar Konu Anlatımı',
      content: 'Sıfatlar ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
