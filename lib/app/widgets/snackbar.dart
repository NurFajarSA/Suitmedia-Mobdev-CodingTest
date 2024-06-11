import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:km_test/core/theme/colors.dart';

getSnackbar(String message, bool isErrorMessage) {
  Get.snackbar(isErrorMessage ? "Error" : "Success", message,
      backgroundColor: isErrorMessage
          ? AppColors.errorBackground
          : AppColors.successBackground,
      colorText: isErrorMessage ? AppColors.error : AppColors.success,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16));
}
