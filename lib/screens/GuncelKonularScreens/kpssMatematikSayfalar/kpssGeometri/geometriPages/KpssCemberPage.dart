import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssCemberPage extends StatelessWidget {
  const KpssCemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Çember',
      content: 'Çember hakkında detaylı bilgi burada...',
    );
  }
}
