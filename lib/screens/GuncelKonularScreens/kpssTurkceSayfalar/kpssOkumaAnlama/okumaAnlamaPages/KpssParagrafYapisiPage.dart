import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagrafYapisiPage extends StatelessWidget {
  const KpssParagrafYapisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'ParagrafYapisi',
      content:
          'ParagrafYapisi ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
