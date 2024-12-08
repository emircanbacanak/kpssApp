import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssKisaltmalarPage extends StatelessWidget {
  const KpssKisaltmalarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Kısaltmalar',
      content:
          'Kısaltmaların yazımı ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
