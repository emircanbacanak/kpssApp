import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssIsGuclukPage extends StatelessWidget {
  const KpssIsGuclukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'İş ve Güçlük Problemleri',
      content: 'İş ve Güçlük Problemleri hakkında detaylı bilgi burada...',
    );
  }
}
