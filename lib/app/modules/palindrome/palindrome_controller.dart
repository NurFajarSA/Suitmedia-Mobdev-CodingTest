import 'package:get/get.dart';

class PalindromeController extends GetxController {
  var palindrome = ''.obs;
  var isPalindrome = false.obs;

  void checkPalindrome() {
    var reversed = palindrome.value.split('').reversed.join();
    isPalindrome.value = palindrome.value == reversed;
  }
}
