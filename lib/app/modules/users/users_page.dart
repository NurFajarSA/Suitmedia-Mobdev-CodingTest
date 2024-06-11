import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:km_test/app/data/models/user.dart';
import 'package:km_test/app/modules/users/users_controller.dart';
import 'package:km_test/app/modules/users/widgets/card_user.dart';
import 'package:km_test/app/widgets/my_app_bar.dart';

class UsersPage extends GetView<UsersController> {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: "Third Screen"),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(20),
                child: PagedListView<int, User>.separated(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<User>(
                    animateTransitions: true,
                    itemBuilder: (context, item, index) => CardUser(user: item),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ))));
  }
}
