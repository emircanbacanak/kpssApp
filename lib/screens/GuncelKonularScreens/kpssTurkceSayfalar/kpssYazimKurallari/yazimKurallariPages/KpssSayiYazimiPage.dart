import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssSayiYazimiPage extends StatelessWidget {
  const KpssSayiYazimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Sayıların Yazımı',
      content:
          'Sayıların yazımı kuralları ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
