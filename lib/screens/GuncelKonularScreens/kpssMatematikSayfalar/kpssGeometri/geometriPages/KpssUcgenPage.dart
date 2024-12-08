import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssUcgenPage extends StatelessWidget {
  const KpssUcgenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Üçgen',
      content: 'Üçgen hakkında detaylı bilgi burada...',
    );
  }
}
