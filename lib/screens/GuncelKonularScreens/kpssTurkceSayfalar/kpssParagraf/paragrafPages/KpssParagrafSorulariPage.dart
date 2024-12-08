// lib/pages/kpss/kpssTurkceSayfalar/kpssParagraf/KpssParagrafSorulariPage.dart
import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagrafSorulariPage extends StatelessWidget {
  const KpssParagrafSorulariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Paragraf Soruları Çözme Teknikleri',
      content:
          'Paragraf soruları, genellikle anlamı çözmeye yönelik sorulardır. '
          'Bu sorulara yaklaşım teknikleri geliştirmek önemlidir.',
    );
  }
}
