import 'package:get/get.dart';
import 'package:untitled/screen/category/listcategory/formcategory.controller.dart';

class ListCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListCategoryController());
  }
}
