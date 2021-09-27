import 'package:flutter/material.dart';
import 'package:untitled/@share/utils/util.dart';
import 'package:untitled/resources/styles/colors.dart';
import 'package:untitled/resources/styles/images.dart';
import 'package:untitled/resources/styles/styles.dart';

class ProductItem extends StatefulWidget {
  final bool? haveDiscount;
  const ProductItem({Key? key, this.haveDiscount = true}) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          _buildImageProduct(),
          heightSpace(10),
          _buildNameProduct(),
          heightSpace(8),
          _buildProductPrice(),
        ],
      ),
    );
  }

  Widget _buildImageProduct() => Container(
        child: Image.asset(
          AppImages.product,
          fit: BoxFit.contain,
        ),
      );

  Widget _buildNameProduct() => Container(
        child: Text(
          "Oneplus 9",
          style: AppStyles()
              .typeOpenSans(17)
              .copyWith(fontWeight: FontWeight.w700),
        ),
      );

  Widget _buildProductPrice() => Container(
        child: Text(
          "945.00 AED",
          style: AppStyles()
              .typeOpenSans(12, AppColors.mainColor)
              .copyWith(fontWeight: FontWeight.w600),
        ),
      );
}
