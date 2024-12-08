import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssMubalagaPage extends StatelessWidget {
  const KpssMubalagaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Mubalaga Konu Anlatımı',
      content: 'Mubalaga ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}