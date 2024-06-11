import 'package:get/get.dart';
import 'package:km_test/app/modules/home/home_binding.dart';
import 'package:km_test/app/modules/home/home_page.dart';
import 'package:km_test/app/modules/palindrome/palindrome_binding.dart';
import 'package:km_test/app/modules/palindrome/palindrome_page.dart';
import 'package:km_test/app/modules/splash/splash_binding.dart';
import 'package:km_test/app/modules/splash/splash_page.dart';
import 'package:km_test/app/modules/users/users_binding.dart';
import 'package:km_test/app/modules/users/users_page.dart';
import 'package:km_test/routes/routes.dart';

class Pages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.PALINDROME,
      page: () => const PalindromePage(),
      binding: PalindromeBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.USERS,
      page: () => const UsersPage(),
      binding: UsersBinding(),
    ),
  ];
}
