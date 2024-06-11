import 'package:flutter/material.dart';
import 'package:km_test/core/theme/text_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Text(
            text,
            style: AppTextTheme.medium.copyWith(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
