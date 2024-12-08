import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssOrneklemePage extends StatelessWidget {
  const KpssOrneklemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Ornekleme',
      content:
          'Ornekleme ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
