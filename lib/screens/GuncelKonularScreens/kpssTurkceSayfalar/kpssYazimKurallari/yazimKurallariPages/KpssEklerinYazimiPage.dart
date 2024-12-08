import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssEklerinYazimiPage extends StatelessWidget {
  const KpssEklerinYazimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Eklerin Yazımı',
      content:
          'Eklerin yazımı kuralları ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
