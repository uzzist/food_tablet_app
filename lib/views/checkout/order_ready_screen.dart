import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';
import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:food_tablet_app/views/home/home_screen.dart';
import 'package:get/get.dart';
import '../../utils/values/app_colors/app_colors.dart';
import '../../utils/values/styles/styles.dart';

class OrderReadyScreen extends StatelessWidget {
  const OrderReadyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Your order has the number',
          style: kSize24DarkW500Text.copyWith(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your order is ready', style: kSize24DarkW500Text.copyWith(
              fontSize: 60.sp,
              fontWeight: FontWeight.normal,
            ),),
            80.sbh,
            Text('E758', style: kSize24DarkW500Text.copyWith(
                fontSize: 282.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primary
            ),),
            20.sbh,
            Text('Order number', style: kSize24DarkW500Text.copyWith(
              fontSize: 40.sp,
              fontWeight: FontWeight.normal,
            ),),
            80.sbh,
            Image.asset(AppImages.pick_order, height: 833.h, width: 1193.w,),
            60.sbh,
            Text('Pick your order from the counter', style: kSize24DarkW500Text.copyWith(
              fontSize: 50.sp,
              fontWeight: FontWeight.normal,
            ),),
          ],
        ),
      ),
    );
  }
}