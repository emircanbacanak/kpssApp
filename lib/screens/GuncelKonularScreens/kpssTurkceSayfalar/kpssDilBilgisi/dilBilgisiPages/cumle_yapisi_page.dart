import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class CumleYapisiPage extends StatelessWidget {
  const CumleYapisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Cümle Yapısı Konu Anlatımı',
      content: 'Cümle yapısı hakkında detaylı bilgi burada yer alacak...',
    );
  }
}
