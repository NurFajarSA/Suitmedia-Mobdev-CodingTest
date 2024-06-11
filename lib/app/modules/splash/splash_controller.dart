import 'dart:async';

import 'package:get/get.dart';
import 'package:km_test/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    launchApp();
  }

  launchApp() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.PALINDROME);
    });
  }
}
