import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssSayiTurleriPage extends StatelessWidget {
  const KpssSayiTurleriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Sayı Türleri',
      content:
          'Sayı türleri hakkında detaylı konu anlatımı burada yer alacak...',
    );
  }
}
