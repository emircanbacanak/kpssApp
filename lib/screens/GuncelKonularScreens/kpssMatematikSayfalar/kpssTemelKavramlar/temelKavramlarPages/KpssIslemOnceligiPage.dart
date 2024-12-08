import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssIslemOnceligiPage extends StatelessWidget {
  const KpssIslemOnceligiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'İşlem Önceliği',
      content:
          'İşlem önceliği ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
