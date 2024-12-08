import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssDairePage extends StatelessWidget {
  const KpssDairePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Daire',
      content: 'Daire hakkında detaylı bilgi burada...',
    );
  }
}
