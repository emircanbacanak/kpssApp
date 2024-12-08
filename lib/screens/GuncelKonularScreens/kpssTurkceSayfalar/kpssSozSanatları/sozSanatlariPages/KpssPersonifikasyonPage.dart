import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssPersonifikasyonPage extends StatelessWidget {
  const KpssPersonifikasyonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Personifikasyon',
      content:
          'Personifikasyon, cansız varlıklara insan özellikleri atfetmektir. '
          'Bu, okuyucunun metne duygusal bir bağ kurmasını sağlar.',
    );
  }
}
