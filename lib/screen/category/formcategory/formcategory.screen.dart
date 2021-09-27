import 'package:untitled/@core/router/pages.dart';
import 'package:untitled/@share/utils/util.dart';
import 'package:untitled/@share/widget/filled_round_button.dart';
import 'package:untitled/@share/widget/stateless/item_custom_text_field.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/images.dart';
import 'package:untitled/resources/styles/styles.dart';
import 'package:untitled/screen/category/category/category.controller.dart';
import 'package:untitled/screen/category/formcategory/formcategory.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormCategoryScreen extends GetWidget<FormCategoryController> {
  final categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Thêm danh mục",
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
          children: [
            ItemCustomTextField(
              controller: controller.nameController,
              hintText: "Tên danh mục",
              icon: AppImages.icEmail,
            ),
            heightSpace(14),
            _btnSubmit()
          ],
        ),
      ),
    );
  }

  Widget _btnSubmit() {
    return Container(
      height: 50,
      child: FilledRoundButton.withColor(
        onTap: () {
          categoryController.listCategory.add(GestureDetector(
            onTap: () {
              goTo(screen: ROUTER_LISTCATEGORY);
            },
            child: Stack(
              children: [
                Container(
                  width: widthScreen(),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.whiteOpacity,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite),
                      Text(
                        controller.nameController.text,
                        style: AppStyles()
                            .typeOpenSans(17, AppColors.blackTitle)
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      heightSpace(6),
                      Text(
                        "9 Item",
                        style: AppStyles()
                            .typeOpenSans(14, AppColors.blackTitle)
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child:
                        GestureDetector(onTap: () {}, child: Icon(Icons.close)))
              ],
            ),
          ));
          goBack();
        },
        pureColor: AppColors.accentColor,
        radius: 6,
        text: Text(
          "Lưu lại",
          style: AppStyles()
              .typeOpenSans(17, AppColors.white)
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
