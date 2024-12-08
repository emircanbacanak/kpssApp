import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpssapp/controllers/auth_controller.dart';
import 'package:kpssapp/ortak/custom_button.dart';
import 'package:kpssapp/ortak/custom_link_text.dart';
import 'package:kpssapp/ortak/custom_text_field.dart';
import 'package:kpssapp/ortak/custom_title.dart';

class RegisterScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  RegisterScreen({super.key});

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
                const CustomTitle(titleText: 'Register'),
                const SizedBox(height: 40),
                CustomTextField(
                    labelText: 'Name', onChanged: (value) {} // Kullanıcı ismi
                    ),
                const SizedBox(height: 20),
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
                    buttonText: 'Register',
                    buttonColor: Colors.tealAccent[100] ?? Colors.tealAccent,
                    textColor: Colors.black,
                    onPressed: () {
                      authController.register();
                    }),
                const SizedBox(height: 20),
                CustomLinkText(
                    text: "Already have an account? ",
                    linkText: "Login here",
                    onTap: () {
                      Get.back();
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
