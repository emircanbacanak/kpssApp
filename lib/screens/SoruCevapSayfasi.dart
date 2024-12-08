import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // rootBundle için
import 'package:kpssapp/ortak/SonucEkrani.dart';

class SoruCevapSayfasi extends StatefulWidget {
  final String konuAdi;
  final List<Map<String, dynamic>> sorular;

  const SoruCevapSayfasi({
    required this.konuAdi,
    required this.sorular,
    super.key,
  });

  @override
  State<SoruCevapSayfasi> createState() => _SoruCevapSayfasiState();
}

class _SoruCevapSayfasiState extends State<SoruCevapSayfasi> {
  int _soruIndex = 0;
  List<String?> _cevaplar = [];
  int _dogruSayisi = 0;
  int _yanlisSayisi = 0;
  int _bosSayisi = 0;

  @override
  void initState() {
    super.initState();
    _cevaplar = List.filled(widget.sorular.length, null);
  }

  String _getResimAdi() {
    final altKonuAdi = widget.konuAdi
        .toLowerCase()
        .replaceAll(' ', '')
        .replaceAll('ç', 'c')
        .replaceAll('ğ', 'g')
        .replaceAll('ı', 'i')
        .replaceAll('ö', 'o')
        .replaceAll('ş', 's')
        .replaceAll('ü', 'u');

    return 'assets/${altKonuAdi}${_soruIndex + 1}.jpeg';
  }

  Future<bool> _isResimVar(String resimAdi) async {
    try {
      await rootBundle.load(resimAdi);
      return true;
    } catch (e) {
      return false;
    }
  }

  Widget _buildResim() {
    final resimAdi = _getResimAdi();

    return FutureBuilder<bool>(
      future: _isResimVar(resimAdi),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == true) {
            return Container(
              height: 200,
              alignment: Alignment.center,
              child: Image.asset(
                resimAdi,
                fit: BoxFit.contain,
              ),
            );
          }
          return const SizedBox.shrink();
        }
        return const SizedBox.shrink();
      },
    );
  }

  void _cevapSec(String cevap) {
    setState(() {
      _cevaplar[_soruIndex] = cevap;
    });
  }

  void _sonrakiSoru() {
    if (_soruIndex < widget.sorular.length - 1) {
      setState(() {
        _soruIndex++;
      });
    } else {
      _sonuclariHesapla();
      _sonucEkraninaGit();
    }
  }

  void _oncekiSoru() {
    if (_soruIndex > 0) {
      setState(() {
        _soruIndex--;
      });
    }
  }

  void _bosBirak() {
    setState(() {
      _cevaplar[_soruIndex] = "boş";
      _sonrakiSoru();
    });
  }

  void _sonuclariHesapla() {
    int dogru = 0, yanlis = 0, bos = 0;
    for (int i = 0; i < widget.sorular.length; i++) {
      if (_cevaplar[i] == null || _cevaplar[i] == "boş") {
        bos++;
      } else if (_cevaplar[i] == widget.sorular[i]['dogruCevap']) {
        dogru++;
      } else {
        yanlis++;
      }
    }
    _dogruSayisi = dogru;
    _yanlisSayisi = yanlis;
    _bosSayisi = bos;
  }

  void _sonucEkraninaGit() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SonucEkrani(
          toplamSoru: widget.sorular.length,
          dogruSayisi: _dogruSayisi,
          yanlisSayisi: _yanlisSayisi,
          bosSayisi: _bosSayisi,
          sorular: widget.sorular,
          konuAdi: widget.konuAdi,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final soru = widget.sorular[_soruIndex];
    final seciliCevap = _cevaplar[_soruIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.konuAdi),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu), // Sağ üstte üç çizgi simgesi
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ListView.builder(
                    itemCount: widget.sorular.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Soru ${index + 1}"),
                        selected: _soruIndex == index,
                        onTap: () {
                          Navigator.pop(context); // Açılır pencereyi kapat
                          setState(() {
                            _soruIndex = index; // Seçilen soruya geç
                          });
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildResim(),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    soru['soru'],
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                ...soru['cevaplar'].map<Widget>((cevap) {
                  final isSelected = cevap == seciliCevap;
                  return GestureDetector(
                    onTap: () => _cevapSec(cevap),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.blue.shade100
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        cevap,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                }).toList(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: _oncekiSoru,
                      child: const Text("Önceki"),
                    ),
                    ElevatedButton(
                      onPressed: _bosBirak,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: const Text("Boş Bırak"),
                    ),
                    ElevatedButton(
                      onPressed: _sonrakiSoru,
                      child: const Text("Sonraki"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
