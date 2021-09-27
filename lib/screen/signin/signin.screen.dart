import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/@core/router/pages.dart';
import 'package:untitled/@share/utils/util.dart';
import 'package:untitled/@share/widget/filled_round_button.dart';
import 'package:untitled/@share/widget/stateless/item_custom_text_field.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/images.dart';
import 'package:untitled/resources/styles/styles.dart';
import 'package:untitled/screen/signin/signin.controller.dart';

class SignInScreen extends GetWidget<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: heightScreen(),
        width: widthScreen(),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _itemHeader(),
              heightSpace(70),
              ItemCustomTextField(
                hintText: "Số điện thoại",
                icon: AppImages.icEmail,
              ),
              heightSpace(14),
              ItemCustomTextField(
                hintText: "Mật khẩu",
                icon: AppImages.icClock,
              ),
              heightSpace(40),
              _btnSubmit(),
              heightSpace(90),
            ],
          ),
        ),
      ),
    );
  }

  Widget _btnSubmit() {
    return Container(
      height: 50,
      child: FilledRoundButton.withColor(
        onTap: () {
          goToAndRemoveAll(screen: ROUTER_BOTTOMBAR);
        },
        pureColor: AppColors.accentColor,
        radius: 6,
        text: Text(
          "Đăng nhập",
          style: AppStyles()
              .typeOpenSans(17, AppColors.white)
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _itemHeader() => Container(
        margin: const EdgeInsets.only(top: 126),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Xin ",
                  style: AppStyles()
                      .typeRoboto(40, AppColors.black)
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Chào!",
                  style: AppStyles()
                      .typeRoboto(40, AppColors.mainColor)
                      .copyWith(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      );
}
