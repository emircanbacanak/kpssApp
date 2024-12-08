import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssMecaziMurselPage extends StatelessWidget {
  const KpssMecaziMurselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'MecaziMursel Konu Anlatımı',
      content:
          'MecaziMursel ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
