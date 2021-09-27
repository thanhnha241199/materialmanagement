import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/@core/router/pages.dart';
import 'package:untitled/@share/utils/util.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/styles.dart';

class CategoryController extends GetxController {
  RxList<Widget> listCategory = <Widget>[].obs;

  @override
  void onInit() {
    super.onInit();
    listCategory.add(Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.whiteOpacity,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                goTo(screen: ROUTER_FORMCATEGORY);
              },
              child: Column(
                children: [
                  Text(
                    "Thêm",
                    style: AppStyles()
                        .typeOpenSans(17, AppColors.blackTitle)
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  heightSpace(10),
                  Icon(Icons.add),
                ],
              ))
        ],
      ),
    ));
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
