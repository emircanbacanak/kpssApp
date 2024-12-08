import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssCumledeAnlamPage extends StatelessWidget {
  const KpssCumledeAnlamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Cümlede Anlam',
      content:
          'Cümlede anlam ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
