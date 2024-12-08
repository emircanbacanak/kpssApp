import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagraftaAnlatimTeknikleriPage extends StatelessWidget {
  const KpssParagraftaAnlatimTeknikleriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Paragrafta Anlatım Teknikleri',
      content:
          'Paragrafta anlatım teknikleri, yazarın düşüncelerini ifade etmek için kullandığı yöntemlerdir. '
          'Örneğin, betimleme, örnekleme gibi teknikler kullanılabilir.',
    );
  }
}
