import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssKarisikProblemlerPage extends StatelessWidget {
  const KpssKarisikProblemlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Karışık Problemler',
      content: 'Karışık Problemler hakkında detaylı bilgi burada...',
    );
  }
}
