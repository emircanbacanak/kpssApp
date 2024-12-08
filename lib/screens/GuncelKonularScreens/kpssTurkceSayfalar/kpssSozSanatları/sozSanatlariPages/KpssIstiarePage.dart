import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssIstiarePage extends StatelessWidget {
  const KpssIstiarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'İstiare',
      content:
          'İstiare, bir varlığın bir başka varlıkla benzerliği üzerinden ifade edilmesidir. '
          'Bu, okuyucuya farklı bir bakış açısı kazandırır.',
    );
  }
}
