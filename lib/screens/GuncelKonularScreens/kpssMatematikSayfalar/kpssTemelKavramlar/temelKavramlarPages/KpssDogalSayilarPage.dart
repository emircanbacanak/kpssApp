import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssDogalSayilarPage extends StatelessWidget {
  const KpssDogalSayilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Doğal Sayılar',
      content:
          'Doğal sayılar ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
