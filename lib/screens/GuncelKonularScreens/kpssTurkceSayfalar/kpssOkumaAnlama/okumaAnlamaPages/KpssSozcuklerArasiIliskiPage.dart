import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssSozcuklerArasiIliskiPage extends StatelessWidget {
  const KpssSozcuklerArasiIliskiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'SozcuklerArasiIliski',
      content:
          'SozcuklerArasiIliski ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
