import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssTekCiftSayilarPage extends StatelessWidget {
  const KpssTekCiftSayilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Tek ve Çift Sayılar',
      content: 'Tek ve çift sayılar hakkında detaylı bilgi burada...',
    );
  }
}
