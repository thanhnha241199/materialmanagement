import 'package:untitled/@share/utils/util.dart';
import 'package:untitled/@share/widget/filled_round_button.dart';
import 'package:untitled/@share/widget/stateless/item_custom_text_field.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/images.dart';
import 'package:untitled/resources/styles/styles.dart';
import 'package:untitled/screen/category/category/category.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/category/listcategory/formcategory.controller.dart';

class ListCategoryScreen extends GetWidget<ListCategoryController> {
  final categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Danh mục",
          style: AppStyles()
              .typeOpenSans(17, AppColors.blackTitle)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            goBack();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
            size: AppSize.leadingAppBarIcon,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
