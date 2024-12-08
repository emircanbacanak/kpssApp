import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssIroniPage extends StatelessWidget {
  const KpssIroniPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Ironi Konu Anlatımı',
      content: 'Ironi ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
