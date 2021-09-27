import 'package:untitled/@core/router/pages.dart';
import 'package:untitled/screen/bottombar/bottombar.binding.dart';
import 'package:untitled/screen/bottombar/bottombar.screen.dart';
import 'package:untitled/screen/category/category/category.binding.dart';
import 'package:untitled/screen/category/category/category.screen.dart';
import 'package:untitled/screen/category/formcategory/formcategory.binding.dart';
import 'package:untitled/screen/category/formcategory/formcategory.screen.dart';
import 'package:untitled/screen/category/listcategory/listcategory.binding.dart';
import 'package:untitled/screen/category/listcategory/listcategory.screen.dart';
import 'package:untitled/screen/home/home.binding.dart';
import 'package:untitled/screen/home/home.screen.dart';
import 'package:untitled/screen/signin/signin.binding.dart';
import 'package:untitled/screen/signin/signin.screen.dart';
import 'package:untitled/screen/splash/splash.binding.dart';
import 'package:untitled/screen/splash/splash.screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routers {
  static final route = [
    GetPage(
        name: ROUTER_SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: ROUTER_BOTTOMBAR,
        page: () => BottomBarScreen(),
        binding: BottomBarBinding()),
    GetPage(
        name: ROUTER_SIGNIN,
        page: () => SignInScreen(),
        binding: SignInBinding()),
    GetPage(
        name: ROUTER_HOME, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(
        name: ROUTER_CATEGORY,
        page: () => CategoryScreen(),
        binding: CategoryBinding()),
    GetPage(
        name: ROUTER_FORMCATEGORY,
        page: () => FormCategoryScreen(),
        binding: FormCategoryBinding()),
    GetPage(
        name: ROUTER_LISTCATEGORY,
        page: () => ListCategoryScreen(),
        binding: ListCategoryBinding()),
  ];
}
