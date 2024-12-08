import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssBaglaclarinYazimiPage extends StatelessWidget {
  const KpssBaglaclarinYazimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Bağlaçların Yazımı',
      content:
          'Bağlaçların yazımı ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
