import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssTurevPage extends StatelessWidget {
  const KpssTurevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Türev',
      content: 'Türev hakkında detaylı bilgi burada...',
    );
  }
}
