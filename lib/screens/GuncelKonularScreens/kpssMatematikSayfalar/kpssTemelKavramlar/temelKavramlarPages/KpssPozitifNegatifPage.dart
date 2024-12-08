import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssPozitifNegatifPage extends StatelessWidget {
  const KpssPozitifNegatifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Pozitif ve Negatif Sayılar',
      content:
          'Pozitif ve negatif sayılar ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
