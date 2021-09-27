import 'package:untitled/@share/widget/bottom_navigation_viewpager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/category/category/category.screen.dart';
import 'package:untitled/screen/home/home.screen.dart';
import 'bottombar.controller.dart';

class BottomBarScreen extends GetWidget<BottomBarController> {
  final bottombarController = Get.put(BottomBarController());

  onClickTab(int index) {
    bottombarController.pageController.jumpToPage(index);
    bottombarController.updateIndexTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: onClickTab,
        controller: bottombarController.pageController,
        children: [
          HomeScreen(),
          Scaffold(
            appBar: AppBar(
              title: Text("2"),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text("3"),
            ),
          ),
          CategoryScreen(),
          Scaffold(
            appBar: AppBar(
              title: Text("5"),
            ),
          )
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationViewPager(
          index: bottombarController.indexTab.value,
          onTapTab: onClickTab,
        ),
      ),
    );
  }
}
