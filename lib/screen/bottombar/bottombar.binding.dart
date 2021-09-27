import 'package:get/get.dart';

import 'bottombar.controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomBarController());
  }
}
