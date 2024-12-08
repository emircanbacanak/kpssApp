import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssPolinomlarPage extends StatelessWidget {
  const KpssPolinomlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Polinomlar',
      content: 'Polinomlar hakkında detaylı bilgi burada...',
    );
  }
}
