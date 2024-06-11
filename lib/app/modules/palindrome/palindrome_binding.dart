import 'package:get/get.dart';
import 'package:km_test/app/modules/palindrome/palindrome_controller.dart';

class PalindromeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PalindromeController>(() => PalindromeController());
  }
}
