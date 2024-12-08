import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssAsirmaPage extends StatelessWidget {
  const KpssAsirmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Aşırma',
      content:
          'Aşırma, bir sözün başka bir söz veya ifade ile özdeşleştirilmesidir. '
          'Bu teknik, anlatımda güçlülük sağlar.',
    );
  }
}
