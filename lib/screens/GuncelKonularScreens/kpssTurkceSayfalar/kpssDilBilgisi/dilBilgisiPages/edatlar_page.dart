import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class EdatlarPage extends StatelessWidget {
  const EdatlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Edatlar Konu Anlatımı',
      content: 'Edatlar ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
