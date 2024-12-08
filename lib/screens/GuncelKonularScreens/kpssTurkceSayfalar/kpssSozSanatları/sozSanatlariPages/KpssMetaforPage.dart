import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssMetaforPage extends StatelessWidget {
  const KpssMetaforPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Metafor',
      content: 'Metafor, bir kavramın başka bir kavramla ifade edilmesidir. '
          'Bu, dilin estetik yönünü güçlendirir.',
    );
  }
}
