import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormCategoryController extends GetxController {
  var name = ''.obs;
  TextEditingController nameController = TextEditingController();

  updateName(value) {
    name.value = value;
    update();
  }

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
