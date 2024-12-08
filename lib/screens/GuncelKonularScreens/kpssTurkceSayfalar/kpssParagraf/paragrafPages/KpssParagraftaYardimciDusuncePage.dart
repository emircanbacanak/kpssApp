// lib/pages/kpss/kpssTurkceSayfalar/kpssParagraf/KpssParagraftaYardimciDusuncePage.dart
import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagraftaYardimciDusuncePage extends StatelessWidget {
  const KpssParagraftaYardimciDusuncePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Paragrafta Yardımcı Düşünce',
      content: 'Yardımcı düşünceler, ana düşünceyi destekleyen ek bilgilerdir. '
          'Bu düşünceler, ana düşüncenin daha iyi anlaşılmasını sağlar.',
    );
  }
}
