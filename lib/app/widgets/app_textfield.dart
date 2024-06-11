import 'package:flutter/material.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.placeholder,
      required this.controller,
      this.onChanged});

  final String placeholder;
  final TextEditingController controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: placeholder,
        filled: true,
        fillColor: AppColors.background,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.greyLight, width: 0.5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.greyLight, width: 0.5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: AppTextTheme.medium.copyWith(
          fontSize: 16,
          color: AppColors.primary.withOpacity(0.5),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      ),
      style: AppTextTheme.medium.copyWith(
        fontSize: 16,
        color: AppColors.dark,
      ),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
