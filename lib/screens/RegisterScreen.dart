import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpssapp/controllers/auth_controller.dart';

class RegisterScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        // Kaydırılabilir içerik
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80), // Üstten biraz boşluk bırakıyoruz
                const Center(
                  child: Text(
                    "KAYIT OL",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                _customInputField(
                  label: "Name",
                  isPassword: false,
                ),
                const SizedBox(height: 15),
                _customInputField(
                  label: "Email",
                  isPassword: false,
                ),
                const SizedBox(height: 15),
                _customInputField(
                  label: "Password",
                  isPassword: true,
                ),
                const SizedBox(height: 15),
                _customInputField(
                  label: "Confirm Password",
                  isPassword: true,
                ),
                const SizedBox(height: 30),
                _gradientButton(
                  text: "Kayıt Ol",
                  onPressed: () {
                    authController.register();
                  },
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Center(
                    child: Text(
                      "Zaten hesabın var mı? Giriş Yap",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50), // Alt kısımda boşluk bırakıyoruz
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customInputField({required String label, required bool isPassword}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }

  Widget _gradientButton(
      {required String text, required VoidCallback onPressed}) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFF00FF), // Pembe
            Color(0xFF00FFFF), // Cyan
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
