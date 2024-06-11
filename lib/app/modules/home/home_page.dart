import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/modules/home/home_controller.dart';
import 'package:km_test/app/widgets/app_button.dart';
import 'package:km_test/app/widgets/my_app_bar.dart';
import 'package:km_test/core/theme/text_theme.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: "Second Screen"),
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: AppTextTheme.regular.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    controller.user.value,
                    style: AppTextTheme.semiBold.copyWith(fontSize: 18),
                  )
                ],
              ),
              Center(
                child: Text(
                  "Selected User Name",
                  style: AppTextTheme.semiBold.copyWith(fontSize: 24),
                ),
              ),
              AppButton(onPressed: controller.chooseUser, text: "Choose a User")
            ],
          ),
        )));
  }
}
