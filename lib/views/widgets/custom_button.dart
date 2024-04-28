import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/values/app_colors/app_colors.dart';
import '../../utils/values/styles/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.beige,
          fixedSize: Size(288.w, 52.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r), // Set the border radius here
          ),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'Back',
            style: kSize18DarkW500Text,
          ),
        ));
  }
}
