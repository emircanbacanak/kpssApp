import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class FiilCatisiPage extends StatelessWidget {
  const FiilCatisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Fiil Çatısı Konu Anlatımı',
      content: 'Fiil çatısı ile ilgili detaylı konu anlatımı buraya gelecek...',
    );
  }
}
