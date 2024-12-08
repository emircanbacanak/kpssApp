import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssEkokEbobPage extends StatelessWidget {
  const KpssEkokEbobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'EBOB ve EKOK',
      content: 'EBOB ve EKOK hakkında detaylı bilgi burada yer alacak...',
    );
  }
}
