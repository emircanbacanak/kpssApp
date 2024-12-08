import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssBolunebilmeKurallariPage extends StatelessWidget {
  const KpssBolunebilmeKurallariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Bölünebilme Kuralları',
      content: 'Bölünebilme kuralları hakkında detaylı bilgi burada...',
    );
  }
}
