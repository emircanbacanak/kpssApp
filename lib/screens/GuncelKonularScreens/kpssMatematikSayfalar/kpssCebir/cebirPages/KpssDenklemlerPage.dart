import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssDenklemlerPage extends StatelessWidget {
  const KpssDenklemlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Denklemler',
      content:
          'Denklemler ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
