import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagrafAnlamiPage extends StatelessWidget {
  const KpssParagrafAnlamiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Paragrafın Anlamı',
      content:
          'Paragrafın anlamı, bir metinde iletilmek istenen düşüncelerin toplandığı yerdir. '
          'Her paragraf, kendi içinde bir anlam bütünlüğüne sahiptir ve okuyucuya belirli bir mesaj iletir.',
    );
  }
}
