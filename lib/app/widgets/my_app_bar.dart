import 'package:flutter/material.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key, required String title})
      : super(
          title: Text(
            'Second Screen',
            style: AppTextTheme.semiBold.copyWith(fontSize: 18),
          ),
          iconTheme: const IconThemeData(color: AppColors.accent),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: AppColors.greyLight,
              height: 1, // Tinggi garis bawah
            ),
          ),
        );
}
