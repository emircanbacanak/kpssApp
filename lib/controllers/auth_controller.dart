import 'package:get/get.dart';

class AuthController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isLoggedIn = false.obs;

  void login() {
    if (email.value == '' && password.value == '') {
      isLoggedIn.value = true;
      Get.snackbar('Başarılı', 'Giriş yapıldı!');
    } else {
      isLoggedIn.value = false;
      Get.snackbar('Hata', 'Geçersiz email veya şifre.');
    }
  }

  void register() {
    if (email.value.isNotEmpty && password.value.isNotEmpty) {
      isLoggedIn.value = true;
      Get.snackbar('Başarılı', 'Kayıt olundu!');
    } else {
      Get.snackbar('Hata', 'Email ve şifre boş olamaz.');
    }
  }

  void logout() {
    isLoggedIn.value = false;
    Get.snackbar('Başarılı', 'Çıkış yapıldı!');
  }
}
