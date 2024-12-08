import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssOzelKurallarPage extends StatelessWidget {
  const KpssOzelKurallarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Diğer Özel Kurallar',
      content:
          'Diğer özel yazım kuralları ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
