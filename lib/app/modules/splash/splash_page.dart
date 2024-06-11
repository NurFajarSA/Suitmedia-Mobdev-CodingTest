import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/modules/splash/splash_controller.dart';
import 'package:km_test/core/theme/colors.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'KM Test',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
