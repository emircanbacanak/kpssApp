import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpssapp/controllers/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "ŞİFREMİ UNUTTUM",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              _customInputField(
                label: "Email",
                isPassword: false,
                onChanged: (value) => authController.email.value = value,
              ),
              const SizedBox(height: 30),
              _gradientButton(
                text: "Şifremi Sıfırla",
                onPressed: () {
                  if (authController.email.value.isNotEmpty) {
                    Get.snackbar(
                        'Başarılı', 'Şifre sıfırlama linki gönderildi!');
                  } else {
                    Get.snackbar(
                        'Hata', 'Lütfen geçerli bir email adresi girin.');
                  }
                },
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Text(
                  "Geri",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customInputField({
    required String label,
    required bool isPassword,
    required Function(String) onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        onChanged: onChanged,
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
            Color(0xFFFF00FF),
            Color(0xFF00FFFF),
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
