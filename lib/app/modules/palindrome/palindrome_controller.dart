import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/widgets/app_button.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';
import 'package:km_test/routes/routes.dart';

class PalindromeController extends GetxController {
  final _palindromeController = TextEditingController().obs;
  final _nameController = TextEditingController().obs;

  var isPalindrome = false.obs;

  get palindromeController => _palindromeController;
  get nameController => _nameController;

  void checkPalindrome() {
    if (_palindromeController.value.text.isEmpty) {
      Get.snackbar('Error', 'Please enter a palindrome',
          backgroundColor: AppColors.errorBackground,
          colorText: AppColors.error,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(16));
      return;
    }

    var reversed = _palindromeController.value.text.split('').reversed.join();
    isPalindrome.value = _palindromeController.value.text == reversed;

    Get.defaultDialog(
      title: 'Result',
      titleStyle: AppTextTheme.semiBold.copyWith(
        fontSize: 20,
        color: AppColors.primary,
      ),
      content: Text(
        isPalindrome.value ? 'Is Palindrome' : 'Is not Palindrome',
        style: TextStyle(
          color: isPalindrome.value ? AppColors.success : AppColors.error,
          fontSize: 18,
        ),
      ),
      contentPadding: const EdgeInsets.all(16),
      titlePadding: const EdgeInsets.all(16),
      actions: [
        AppButton(
          text: 'OK',
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }

  void gotoHome() {
    Get.toNamed(Routes.HOME);
  }
}
