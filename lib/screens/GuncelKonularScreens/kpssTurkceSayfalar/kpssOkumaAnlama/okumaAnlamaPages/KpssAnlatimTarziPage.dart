import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssAnlatimTarziPage extends StatelessWidget {
  const KpssAnlatimTarziPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Anlatim Tarzi',
      content:
          'Anlatim Tarzi ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
