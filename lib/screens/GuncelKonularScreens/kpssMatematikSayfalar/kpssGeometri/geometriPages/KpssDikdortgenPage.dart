import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssDikdortgenPage extends StatelessWidget {
  const KpssDikdortgenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Dikdörtgen',
      content: 'Dikdörtgen hakkında detaylı bilgi burada...',
    );
  }
}
