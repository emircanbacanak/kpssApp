import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagrafYapisiPage extends StatelessWidget {
  const KpssParagrafYapisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Paragrafın Yapısı',
      content:
          'Paragrafın yapısı, genellikle bir giriş, gelişme ve sonuç bölümünden oluşur. '
          'Bu yapıyı iyi anlamak, metinlerin daha iyi analiz edilmesine yardımcı olur.',
    );
  }
}
