import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssSesOlaylariPage extends StatelessWidget {
  const KpssSesOlaylariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Ses Olayları',
      content:
          'Ses olayları ile ilgili detaylı konu anlatımı burada yer alacak...',
    );
  }
}
