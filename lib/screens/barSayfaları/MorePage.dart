import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpssapp/controllers/auth_controller.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  bool showInPlanetRating = true;
  bool notifications = false;
  static const double progressValue = 87;

  Widget _buildCheckbox(
      String label, bool value, ValueChanged<bool?> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildListTile(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı Profili'),
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 12.0,
                percent: progressValue / 100,
                center: Text(
                  "${progressValue.toStringAsFixed(1)}%",
                  style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                backgroundColor: Colors.grey[300]!,
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                animationDuration: 1200,
                linearGradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 30),
              _buildCheckbox("Bildirim 1", showInPlanetRating, (value) {
                setState(() => showInPlanetRating = value ?? true);
              }),
              _buildCheckbox("Bildirim 2 ", notifications, (value) {
                setState(() => notifications = value ?? true);
              }),
              const SizedBox(height: 20),
              _buildListTile('Ayarlar', Icons.settings, () {}),
              _buildListTile('Yardım & Destek', Icons.help, () {}),
              _buildListTile('Çıkış Yap', Icons.logout, () {
                final authController = Get.find<AuthController>();
                authController.logout();
                Get.offAllNamed('/login');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
