import 'package:flutter/material.dart';
import 'package:kpssapp/screens/SoruCevapSayfasi.dart';
import 'package:kpssapp/screens/cumledeYargiSorular.dart';

class KpssCumledeYargiPage extends StatelessWidget {
  const KpssCumledeYargiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SoruCevapSayfasi(
      konuAdi: 'Cümlede Yargı',
      sorular: cumledeYargiSorular,
    );
  }
}
