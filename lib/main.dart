import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpssapp/controllers/auth_controller.dart';
import 'package:kpssapp/ortak/favorite_topics.dart';
import 'package:kpssapp/screens/ForgotPasswordScreen.dart';
import 'package:kpssapp/screens/LoginScreen.dart';
import 'package:kpssapp/screens/MainScreen.dart';
import 'package:kpssapp/screens/RegisterScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FavoriteTopics.loadFavorites();
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş & Kayıt',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/forgot_password', page: () => ForgotPasswordScreen()),
        GetPage(name: '/home', page: () => const MainScreen()),
      ],
    );
  }
}
