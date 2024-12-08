import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class BaglaclarPage extends StatelessWidget {
  const BaglaclarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
        title: 'Bağlaçlar Konu Anlatımı',
        content:
            'Bağlaçlar ile ilgili detaylı konu anlatımı burada yer alacak...');
  }
}
