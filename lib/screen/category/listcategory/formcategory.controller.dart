import 'package:get/get.dart';

class ListCategoryController extends GetxController {
  @override
  void onInit() {
    Get.log("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Get.log("onReady");
  }

  @override
  void onClose() {
    Get.log("onClose");

    super.onClose();
  }
}
