import 'package:get/get.dart';

class AuthController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  void login() {
    // Burada login işlemleri
    print('Login with Email: ${email.value} and Password: ${password.value}');
  }

  void register() {
    // Burada kayıt işlemleri
    print(
        'Register with Email: ${email.value} and Password: ${password.value}');
  }
}
