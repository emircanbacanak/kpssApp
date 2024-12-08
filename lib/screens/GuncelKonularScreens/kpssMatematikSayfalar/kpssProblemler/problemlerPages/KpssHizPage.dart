import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssHizPage extends StatelessWidget {
  const KpssHizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Hız Problemleri',
      content: 'Hız Problemleri hakkında detaylı bilgi burada...',
    );
  }
}
