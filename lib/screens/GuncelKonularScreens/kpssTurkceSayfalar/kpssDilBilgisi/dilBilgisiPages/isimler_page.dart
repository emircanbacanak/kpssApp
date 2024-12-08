import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class IsimlerPage extends StatelessWidget {
  const IsimlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'İsimler Konu Anlatımı',
      content: 'İsimler konusu hakkında detaylı bilgi burada yer alacak...',
    );
  }
}
