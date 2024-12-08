import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssTesbihPage extends StatelessWidget {
  const KpssTesbihPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Tesbih Konu Anlatımı',
      content: 'Tesbih ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
