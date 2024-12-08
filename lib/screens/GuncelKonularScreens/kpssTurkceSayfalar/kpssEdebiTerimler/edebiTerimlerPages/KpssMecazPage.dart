import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssMecazPage extends StatelessWidget {
  const KpssMecazPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Mecaz Konu Anlatımı',
      content: 'Mecaz ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
