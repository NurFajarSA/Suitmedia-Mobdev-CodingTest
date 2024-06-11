import 'package:get/get.dart';
import 'package:km_test/app/data/providers/shared_pref.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TbSharedPref());
  }
}
