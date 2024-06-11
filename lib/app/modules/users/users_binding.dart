import 'package:get/get.dart';
import 'package:km_test/app/modules/users/users_controller.dart';

class UsersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersController>(() => UsersController());
  }
}
