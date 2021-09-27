import 'package:get/get.dart';
import 'package:untitled/screen/signin/signin.controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}
