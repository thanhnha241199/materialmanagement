import 'package:untitled/screen/category/formcategory/formcategory.controller.dart';
import 'package:get/get.dart';

class FormCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormCategoryController());
  }
}
