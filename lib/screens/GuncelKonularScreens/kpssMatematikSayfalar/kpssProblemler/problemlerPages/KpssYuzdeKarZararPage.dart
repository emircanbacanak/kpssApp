import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssYuzdeKarZararPage extends StatelessWidget {
  const KpssYuzdeKarZararPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Yüzde, Kar-Zarar Problemleri',
      content: 'Yüzde, Kar-Zarar Problemleri hakkında detaylı bilgi burada...',
    );
  }
}
