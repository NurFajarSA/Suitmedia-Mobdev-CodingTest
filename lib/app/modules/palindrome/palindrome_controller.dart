import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/data/providers/shared_pref.dart';
import 'package:km_test/app/widgets/app_button.dart';
import 'package:km_test/app/widgets/snackbar.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';
import 'package:km_test/routes/routes.dart';

class PalindromeController extends GetxController {
  @override
  void onInit() {
    _nameController.value.text =
        _sharedPref.getValueFromSharedPreferences(TbSharedPref.userKey) ?? '';
    super.onInit();
  }

  @override
  void onClose() {
    _palindromeController.value.dispose();
    _nameController.value.dispose();
    super.onClose();
  }

  final TbSharedPref _sharedPref = Get.find<TbSharedPref>();
  final _palindromeController = TextEditingController().obs;
  final _nameController = TextEditingController().obs;

  var isPalindrome = false.obs;

  get palindromeController => _palindromeController;
  get nameController => _nameController;

  void checkPalindrome() {
    if (_palindromeController.value.text.isEmpty) {
      getSnackbar('Please enter a palindrome', true);
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
    if (_nameController.value.text.isEmpty) {
      getSnackbar('Please enter your name', true);
      return;
    }

    _saveData(TbSharedPref.userKey, _nameController.value.text);
    Get.toNamed(Routes.HOME);
  }

  void _saveData(String key, dynamic value) {
    _sharedPref.saveValueToSharedPreferences(key, value);
  }
}
