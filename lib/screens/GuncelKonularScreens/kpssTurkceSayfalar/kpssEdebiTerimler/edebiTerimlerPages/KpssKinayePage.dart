import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssKinayePage extends StatelessWidget {
  const KpssKinayePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Kinaye Konu Anlatımı',
      content: 'Kinaye ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
