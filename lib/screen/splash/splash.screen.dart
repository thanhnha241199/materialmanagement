import 'package:untitled/@share/utils/util.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/images.dart';
import 'package:untitled/resources/styles/styles.dart';
import 'package:untitled/screen/splash/splash.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_buildLogo(), _buildLoading()],
      ),
    );
  }

  Widget _buildLogo() => Image.asset(
        AppImages.logo,
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      );

  Widget _buildLoading() => Column(
        children: [
          Text(
            "Đang tải...",
            style: AppStyles()
                .typeOpenSans(17)
                .copyWith(fontWeight: FontWeight.w700),
          ),
          heightSpace(20),
          CircularProgressIndicator(
            color: AppColors.mainColor,
          ),
        ],
      );
}
