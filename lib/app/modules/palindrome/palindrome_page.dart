import 'package:flutter/material.dart';
import 'package:km_test/app/modules/palindrome/widgets/palindrome_form.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/values/strings.dart';

class PalindromePage extends StatelessWidget {
  const PalindromePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
            child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AppStrings.bgScreen,
              fit: BoxFit.cover,
            ),
            const Center(child: PalindromeForm()),
          ],
        )));
  }
}
