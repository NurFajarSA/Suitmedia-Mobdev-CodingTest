import 'package:get/get.dart';
import 'package:km_test/app/modules/splash/splash_binding.dart';
import 'package:km_test/app/modules/splash/splash_page.dart';
import 'package:km_test/routes/routes.dart';

class Pages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    // GetPage(
    //   name: Routes.PALINDROME,
    //   page: () => const PalindromePage(),
    //   binding: PalindromeBindings(),
    // ),
  ];
}
