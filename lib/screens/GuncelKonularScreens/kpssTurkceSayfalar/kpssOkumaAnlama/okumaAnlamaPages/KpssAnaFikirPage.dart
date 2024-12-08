import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssAnaFikirPage extends StatelessWidget {
  const KpssAnaFikirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Ana Fikir ve Yardımcı Fikirler',
      content:
          'Ana fikir ve yardımcı fikirleri belirleme ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
