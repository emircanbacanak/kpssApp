import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class ZamirlerPage extends StatelessWidget {
  const ZamirlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Zamirler Konu Anlatımı',
      content: 'Zamirler konusu hakkında detaylı bilgi burada yer alacak...',
    );
  }
}
