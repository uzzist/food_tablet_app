import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/utils/values/app_colors/app_colors.dart';
import 'package:food_tablet_app/utils/values/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Special Burger',
          style: kSize24DarkW500Text.copyWith(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
      body: Row(
        children: [
          Expanded(
              child: Container(
                color: AppColors.pink,
              )
          ),
          Expanded(
            flex: 5,
              child: Container(
                color: AppColors.black,
              )
          ),
        ],
      ),
    );
  }
}
