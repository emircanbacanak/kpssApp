import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssAsalSayilarPage extends StatelessWidget {
  const KpssAsalSayilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Asal Sayılar',
      content: 'Asal sayılar hakkında detaylı bilgi burada...',
    );
  }
}
