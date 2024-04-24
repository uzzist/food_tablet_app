import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';

import '../../../utils/values/app_colors/app_colors.dart';
import '../../../utils/values/app_images/app_images.dart';
import '../../../utils/values/styles/styles.dart';

class OrderOptionWidget extends StatelessWidget {

  final String text;
  final String image;
  final String subText;
  final Color backgroundColor;

  const OrderOptionWidget({super.key, required this.text, required this.image, required this.subText, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 472.h,
      width: 468.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: backgroundColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: kSize24DarkW500Text.copyWith(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.pink
          ),),
          40.sbh,
          Image.asset(image, height: 189.h, width: 199.h),
          40.sbh,
          Text(subText, style: kSize20DarkW500Text.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.pink
          ),),
        ],
      ),
    );
  }
}
