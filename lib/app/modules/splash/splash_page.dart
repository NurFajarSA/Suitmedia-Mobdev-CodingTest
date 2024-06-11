import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/modules/splash/splash_controller.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'KM Test',
          style: AppTextTheme.semiBold.copyWith(
            fontSize: 32,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
