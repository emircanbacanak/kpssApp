import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssIslemlerPage extends StatelessWidget {
  const KpssIslemlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'İşlemler',
      content: 'İşlemler ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
