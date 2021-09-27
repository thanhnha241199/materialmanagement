import 'package:untitled/@share/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/@share/widget/stateful/grid_product.dart';
import 'package:untitled/@share/widget/stateful/search_custom_field.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/images.dart';
import 'package:untitled/resources/styles/styles.dart';

import 'home.controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: AppStyles()
              .typeOpenSans(17, AppColors.blackTitle)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: _buildHomePage(),
    );
  }

  Widget _buildHomePage() => Container(
        height: heightScreen(),
        width: widthScreen(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              heightSpace(10),
              SearchCustomField(
                icon: AppImages.icSearch,
                hintText: 'Search',
              ),
              heightSpace(20),
              _buildHeaderPopular(),
              heightSpace(10),
              _buildGridView()
            ],
          ),
        ),
      );

  Widget _buildHeaderPopular() => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Popular Item",
              style: AppStyles()
                  .typeRoboto(16, AppColors.blackTitle)
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              "See All",
              style: AppStyles().typeRoboto(11, AppColors.mainColor),
            )
          ],
        ),
      );

  Widget _buildGridView() => Container(
        width: widthScreen(),
        child: GridProduct(),
      );
}
