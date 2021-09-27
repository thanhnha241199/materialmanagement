import 'package:get/get.dart';
import 'package:untitled/screen/category/category/category.controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
  }
}
