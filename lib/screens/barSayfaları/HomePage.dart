import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/custom_button.dart';
import 'package:kpssapp/ortak/custom_pro_button.dart';
import 'package:kpssapp/ortak/custom_title.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/KpssTopicsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateTime examDate = DateTime.utc(2024, 12, 8, 15, 00);
  late Timer _timer;
  Duration remainingTime = Duration.zero;

  @override
  void initState() {
    super.initState();
    _updateRemainingTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _updateRemainingTime();
    });
  }

  void _updateRemainingTime() {
    setState(() {
      final now = DateTime.now(); //şimdiki zaman
      remainingTime = examDate.difference(now);
      if (remainingTime.isNegative) {
        remainingTime = Duration.zero;
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var days = remainingTime.inDays;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTitle(
                      titleText: days > 0
                          ? 'Sınava Kaç Gün Kaldı?'
                          : 'Sınava Kaç Saat Kaldı'),
                  const SizedBox(height: 20),
                  CircularCountdownTimer(remainingTime: remainingTime),
                  const SizedBox(height: 40),
                  CustomButton(
                    buttonText: 'Güncel Konular',
                    buttonColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KpssTopicsPage()),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    buttonText: 'Deneme Sınavı',
                    buttonColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Deneme sınavı henüz eklenmedi!')),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: ProButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pro butona basıldı!')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CircularCountdownTimer extends StatelessWidget {
  final Duration remainingTime;

  const CircularCountdownTimer({super.key, required this.remainingTime});
  String _formatTime(int time) => time < 10 ? '0$time' : '$time';

  @override
  Widget build(BuildContext context) {
    final days = remainingTime.inDays;
    final hours = remainingTime.inHours % 24;
    final minutes = remainingTime.inMinutes % 60;
    final seconds = remainingTime.inSeconds % 60;

    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (days > 0)
              Text(
                '$days gün',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              )
            else if (remainingTime.inHours > 0 ||
                remainingTime.inMinutes > 0 ||
                remainingTime.inSeconds > 0)
              Text(
                '${_formatTime(hours)}:${_formatTime(minutes)}:${_formatTime(seconds)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              )
            else
              const Text(
                'Sınav Zamanı!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            const SizedBox(height: 8),
            Text(
              days > 0 ? 'Gün' : 'Saat : Dakika : Saniye',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
