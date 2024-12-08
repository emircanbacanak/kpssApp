import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssTezatPage extends StatelessWidget {
  const KpssTezatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Tezat Konu Anlatımı',
      content: 'Tezat ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
