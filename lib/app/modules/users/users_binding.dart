import 'package:get/get.dart';
import 'package:km_test/app/data/providers/remote_api.dart';
import 'package:km_test/app/data/services/user_repository.dart';
import 'package:km_test/app/modules/users/users_controller.dart';

class UsersBinding implements Bindings {
  static final _api = Get.find<RemoteApi>();
  @override
  void dependencies() {
    Get.put(UsersController(UserRepository(_api)));
  }
}
