import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/ProVersionPage.dart';

class ProButton extends StatelessWidget {
  const ProButton({super.key, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProVersionPage()),
        );
      },
      icon: const Icon(Icons.lock, color: Colors.white),
      label: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Pro Versiyona Geç',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(width: 20),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
