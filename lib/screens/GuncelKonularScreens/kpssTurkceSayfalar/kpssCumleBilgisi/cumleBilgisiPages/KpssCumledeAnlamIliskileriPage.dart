import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssCumledeAnlamIliskileriPage extends StatelessWidget {
  const KpssCumledeAnlamIliskileriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Cümlede Anlam İlişkileri',
      content:
          'Cümlede anlam ilişkileri ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
