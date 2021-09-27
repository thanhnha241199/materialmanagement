import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/styles.dart';
import 'package:untitled/screen/category/category/category.controller.dart';

class CategoryScreen extends GetWidget<CategoryController> {
  final controller = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 8;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 3;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 160;
    var _aspectRatio = _width / cellHeight;
    return GetBuilder<CategoryController>(builder: (ctl) {
      return Obx(() => Scaffold(
            appBar: AppBar(
              title: Text(
                "Category",
                style: AppStyles()
                    .typeOpenSans(17, AppColors.blackTitle)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              centerTitle: false,
              automaticallyImplyLeading: false,
              backgroundColor: AppColors.backgroundColor,
              elevation: 0,
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    crossAxisCount: _crossAxisCount,
                    childAspectRatio: _aspectRatio),
                shrinkWrap: true,
                itemCount: controller.listCategory.length,
                itemBuilder: (context, index) {
                  return controller.listCategory[index];
                },
              ),
            ),
          ));
    });
  }
}
