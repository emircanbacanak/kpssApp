import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssCumledeBicimPage extends StatelessWidget {
  const KpssCumledeBicimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Cümlede Biçim',
      content:
          'Cümlede biçim ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
