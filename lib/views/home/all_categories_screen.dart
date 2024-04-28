import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/controllers/home_controller.dart';
import 'package:food_tablet_app/views/checkout/checkout_screen.dart';
import 'package:get/get.dart';

import '../../utils/values/app_colors/app_colors.dart';
import '../../utils/values/app_images/app_images.dart';
import '../../utils/values/styles/styles.dart';

class AllCategoriesScreen extends StatelessWidget {
  AllCategoriesScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'So little or big hunger',
          style: kSize24DarkW500Text.copyWith(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
                  child: GridView.builder(
                      itemCount: 30,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8),
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0,3),
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      color: AppColors.black.withOpacity(0.08)
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Image.asset(AppImages.burger, height: 181.h, width: 182.w,),
                                Text('Long bun', style: kSize22DarkW500Text.copyWith(
                                  color: AppColors.primary
                                ),)
                              ],
                            ),
                          );
                      }),
                ),
            ),
            Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  color: AppColors.black.withOpacity(.05))
                            ]),
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Row(
                          children: [
                            Text(
                              'Your cart',
                              style: kSize24DarkW500Text.copyWith(
                                  color: AppColors.white,
                                  fontSize: 30.sp),
                            ),
                            Spacer(),
                            RichText(
                                text: TextSpan(
                                    text: 'Total:',
                                    style: kSize18DarkW500Text.copyWith(
                                        fontSize: 24.sp,
                                        color: AppColors.white),
                                    children: [
                                      TextSpan(
                                          text: ' \$0.00',
                                          style: kSize22DarkW500Text.copyWith(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 30.sp,
                                          ))
                                    ]))
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppImages.empty_cart,
                                  height: 244.h,
                                  width: 285.w,
                                ),
                                Text(
                                  'Your cart is empty',
                                  style: kSize18DarkW500Text,
                                )
                              ],
                            ),
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: AppColors.champagne,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  color: AppColors.black.withOpacity(.05))
                            ]),
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Row(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  fixedSize: Size(199.w, 52.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16
                                        .r), // Set the border radius here
                                  ),
                                ),
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    'Add to cart',
                                    style: kSize18DarkW500Text.copyWith(
                                        color: AppColors.white),
                                  ),
                                )),
                            Spacer(),
                            Text(
                              '(0 items selected)',
                              style: kSize18DarkW500Text,
                            ),
                            Spacer(),
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  fixedSize: Size(288.w, 52.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16
                                        .r), // Set the border radius here
                                  ),
                                ),
                                onPressed: () {
                                  Get.to(() => CheckoutScreen());
                                },
                                child: Center(
                                  child: Text(
                                    'Checkout',
                                    style: kSize18DarkW500Text.copyWith(
                                        color: AppColors.white),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
