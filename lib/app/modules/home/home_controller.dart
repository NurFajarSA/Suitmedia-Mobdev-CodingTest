import 'package:get/get.dart';
import 'package:km_test/app/data/providers/shared_pref.dart';
import 'package:km_test/routes/routes.dart';

class HomeController extends GetxController {
  var user = ''.obs;
  var selectedUser = ''.obs;
  final TbSharedPref _sharedPref = Get.find<TbSharedPref>();

  @override
  void onInit() {
    super.onInit();
    user.value = _loadData(TbSharedPref.userKey) ?? 'Guest User';
    selectedUser.value =
        _loadData(TbSharedPref.selectedUserKey) ?? 'Selected User Name';
  }

  dynamic _loadData(String key) {
    return _sharedPref.getValueFromSharedPreferences(key);
  }

  void chooseUser() async {
    final result = await Get.toNamed(Routes.USERS);
    if (result != null && result is String) {
      selectedUser.value = result;
      _sharedPref.saveValueToSharedPreferences(
          TbSharedPref.selectedUserKey, result);
    }
  }
}
