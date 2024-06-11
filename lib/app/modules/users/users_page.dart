import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:km_test/app/modules/users/users_controller.dart';

class UsersPage extends GetView<UsersController> {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('UsersPage')),
        body: const SafeArea(child: Text('UsersController')));
  }
}
