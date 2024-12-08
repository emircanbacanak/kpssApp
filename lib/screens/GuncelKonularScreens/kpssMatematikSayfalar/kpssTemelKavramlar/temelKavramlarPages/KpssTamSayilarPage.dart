import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssTamSayilarPage extends StatelessWidget {
  const KpssTamSayilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Tam Sayılar',
      content:
          'Tam sayılar ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
