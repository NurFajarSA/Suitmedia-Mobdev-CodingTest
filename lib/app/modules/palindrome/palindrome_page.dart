import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/modules/palindrome/palindrome_controller.dart';

class PalindromePage extends GetView<PalindromeController> {
  const PalindromePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('PalindromePage')),
        body: const SafeArea(child: Text('PalindromeController')));
  }
}
