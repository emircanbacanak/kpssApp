import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssOznelNesnelPage extends StatelessWidget {
  const KpssOznelNesnelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'OznelNesnel',
      content:
          'OznelNesnel ve yardımcı fikirleri belirleme ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
