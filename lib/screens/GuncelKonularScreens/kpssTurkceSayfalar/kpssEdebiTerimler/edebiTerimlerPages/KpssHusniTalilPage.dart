import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssHusniTalilPage extends StatelessWidget {
  const KpssHusniTalilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'HusniTalil Konu Anlatımı',
      content:
          'HusniTalil ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
