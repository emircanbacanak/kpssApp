import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/konu_anlatimi_page.dart';

class KpssLogaritmaPage extends StatelessWidget {
  const KpssLogaritmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const KonuAnlatimiPage(
      title: 'Logaritma',
      content: 'Logaritma hakkında detaylı bilgi burada...',
    );
  }
}
