import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssIstiarePage extends StatelessWidget {
  const KpssIstiarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Istiare Konu Anlatımı',
      content: 'Istiare ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
