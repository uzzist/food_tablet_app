import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';
import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:food_tablet_app/views/checkout/order_ready_screen.dart';
import 'package:food_tablet_app/views/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/app_colors/app_colors.dart';
import '../../utils/values/styles/styles.dart';
import 'checkout_screen.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({Key? key}) : super(key: key);

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
            Text('C066', style: kSize24DarkW500Text.copyWith(
              fontSize: 282.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primary
            ),),
            80.sbh,
            Text('Payment by card', style: kSize24DarkW500Text.copyWith(
                fontSize: 50.sp,
                fontWeight: FontWeight.normal,
            ),),
            80.sbh,
            Image.asset(AppImages.order_confirmed, height: 833.h, width: 1193.w,),
            80.sbh,
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.pink,
                  fixedSize: Size(690.w, 73.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16
                        .r), // Set the border radius here
                  ),
                ),
                onPressed: () {
                  Get.to(() => OrderReadyScreen());
                },
                child: Center(
                  child: Text(
                    'Done',
                    style: kSize18DarkW500Text.copyWith(
                      color: AppColors.white,
                      fontSize: 30.sp,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
