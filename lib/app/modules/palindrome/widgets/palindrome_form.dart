import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/modules/palindrome/palindrome_controller.dart';
import 'package:km_test/app/modules/palindrome/widgets/avatar.dart';
import 'package:km_test/app/widgets/app_button.dart';
import 'package:km_test/app/widgets/app_textfield.dart';

class PalindromeForm extends GetView<PalindromeController> {
  const PalindromeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Avatar(),
            const SizedBox(height: 60),
            AppTextField(
                placeholder: "Name",
                controller: controller.nameController.value),
            const SizedBox(height: 20),
            AppTextField(
                placeholder: "Palindrome",
                controller: controller.palindromeController.value),
            const SizedBox(height: 32),
            AppButton(
              text: 'CHECK',
              onPressed: controller.checkPalindrome,
            ),
            const SizedBox(height: 4),
            AppButton(
              text: 'NEXT',
              onPressed: controller.gotoHome,
            ),
          ],
        ),
      ),
    );
  }
}
