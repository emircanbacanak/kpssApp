import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssMutlakDegerPage extends StatelessWidget {
  const KpssMutlakDegerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Mutlak Değer',
      content: 'Mutlak değer hakkında detaylı bilgi burada yer alacak...',
    );
  }
}
