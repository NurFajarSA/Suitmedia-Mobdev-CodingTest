import 'package:get/get.dart';
import 'package:km_test/app/data/providers/shared_pref.dart';
import 'package:km_test/routes/routes.dart';

class HomeController extends GetxController {
  var user = ''.obs;
  final TbSharedPref _sharedPref = Get.find<TbSharedPref>();

  @override
  void onInit() {
    super.onInit();
    user.value = _loadData(TbSharedPref.userKey) ?? 'Guest User';
  }

  dynamic _loadData(String key) {
    return _sharedPref.getValueFromSharedPreferences(key);
  }

  void chooseUser() {
    Get.toNamed(Routes.USERS);
  }
}
