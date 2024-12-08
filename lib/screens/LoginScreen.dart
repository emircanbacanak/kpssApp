import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpssapp/controllers/auth_controller.dart';
import 'package:kpssapp/ortak/custom_button.dart';
import 'package:kpssapp/ortak/custom_link_text.dart';
import 'package:kpssapp/ortak/custom_text_field.dart';
import 'package:kpssapp/ortak/custom_title.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                const CustomTitle(titleText: 'Login'),
                const SizedBox(height: 40),
                CustomTextField(
                    labelText: 'Email',
                    onChanged: (value) => authController.email.value = value),
                const SizedBox(height: 20),
                CustomTextField(
                    labelText: 'Password',
                    isPassword: true,
                    onChanged: (value) =>
                        authController.password.value = value),
                const SizedBox(height: 20),
                CustomButton(
                    buttonText: 'Login',
                    buttonColor: Colors.tealAccent[100] ?? Colors.tealAccent,
                    textColor: Colors.black,
                    onPressed: () {
                      authController.login();
                      // Başarılı giriş sonrası home screen'e yönlendir
                      Get.toNamed('/home');
                    }),
                const SizedBox(height: 20),
                CustomLinkText(
                    text: "Don't have an account? ",
                    linkText: "Register here",
                    onTap: () {
                      Get.toNamed('/register');
                    }),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
