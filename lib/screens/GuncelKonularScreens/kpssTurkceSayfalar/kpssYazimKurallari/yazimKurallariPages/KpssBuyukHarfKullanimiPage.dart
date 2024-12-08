import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssBuyukHarfKullanimiPage extends StatelessWidget {
  const KpssBuyukHarfKullanimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Büyük Harflerin Kullanımı',
      content:
          'Büyük harflerin kullanımı ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
