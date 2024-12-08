import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssTemelFonksiyonlarPage extends StatelessWidget {
  const KpssTemelFonksiyonlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Temel Fonksiyonlar',
      content: 'Temel fonksiyonlar hakkında detaylı bilgi burada...',
    );
  }
}
