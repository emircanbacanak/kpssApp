import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssAnlamButunluguPage extends StatelessWidget {
  const KpssAnlamButunluguPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Anlam Butunlugu',
      content:
          'Anlam Butunlugu ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
