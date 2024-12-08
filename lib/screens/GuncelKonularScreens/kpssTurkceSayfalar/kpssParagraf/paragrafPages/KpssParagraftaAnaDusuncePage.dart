import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssParagraftaAnaDusuncePage extends StatelessWidget {
  const KpssParagraftaAnaDusuncePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Paragrafta Ana Düşünce',
      content:
          'Paragrafta ana düşünce, yazarın vermek istediği temel mesajdır. '
          'Okuyucu, bu düşünceyi bulmak için paragrafa dikkatlice bakmalıdır.',
    );
  }
}
