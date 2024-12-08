import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssSozSanatlariTanimiPage extends StatelessWidget {
  const KpssSozSanatlariTanimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Söz Sanatlarının Tanımı',
      content:
          'Söz sanatları, dilin etkili ve estetik bir biçimde kullanılmasını sağlar. '
          'Bu sanatlar, okuyucuda farklı duygular uyandırmayı hedefler.',
    );
  }
}
