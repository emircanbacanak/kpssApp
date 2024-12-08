import 'package:flutter/material.dart';
import 'package:kpssapp/screens/SoruCevapSayfasi.dart';
import 'package:kpssapp/screens/cumledeYargiSorular.dart';

class KpssCumledeOgelerPage extends StatelessWidget {
  const KpssCumledeOgelerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SoruCevapSayfasi(
      konuAdi: 'Cümlede Ögeler',
      sorular: cumledeOgelerSorular,
    );
  }
}
