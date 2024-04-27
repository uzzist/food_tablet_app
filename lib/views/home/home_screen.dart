import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/controllers/home_controller.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';
import 'package:food_tablet_app/utils/values/app_colors/app_colors.dart';
import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:food_tablet_app/utils/values/styles/styles.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
      body: GetBuilder<HomeController>(
        builder: (controller) => Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 20.h),
              decoration: BoxDecoration(color: AppColors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.black.withOpacity(.2))
              ]),
              child: ListView.separated(
                  separatorBuilder: (context, index) => 36.sbh,
                  itemCount: controller.menuOptionList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.optionSelected =
                            controller.menuOptionList[index].id;
                        controller.update();
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            controller.menuOptionList[index].image,
                            height: 148.h,
                            width: 148.w,
                          ),
                          Text(
                            controller.menuOptionList[index].name,
                            style: kSize20DarkW500Text.copyWith(
                                fontWeight: FontWeight.normal,
                                color: controller.optionSelected ==
                                        controller.menuOptionList[index].id
                                    ? AppColors.primary
                                    : AppColors.black),
                          ),
                        ],
                      ),
                    );
                  }),
            )),
            20.sbw,
            Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(color: AppColors.white, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 5,
                        spreadRadius: 0,
                        color: AppColors.black.withOpacity(.2))
                  ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      controller.optionSelected != 1 ? 40.sbh : 0.sbh,
                      Visibility(
                        visible: controller.optionSelected != 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            'Explore our mouthwatering burger\'s variety',
                            style: kSize24DarkW500Text.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    controller.optionSelected != 1 ? 30.w : 0),
                            child: controller.optionSelected != 1
                                ? GridView.builder(
                                    itemCount: 9,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 8,
                                            mainAxisSpacing: 0,
                                            childAspectRatio: 0.63),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.18,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: AppColors.serenade,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          32.r),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 3),
                                                        blurRadius: 5,
                                                        spreadRadius: 0,
                                                        color: AppColors.black
                                                            .withOpacity(.08))
                                                  ]),
                                              padding: EdgeInsets.only(
                                                  left: 20.w, bottom: 20.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    'Special burger',
                                                    style: kSize24DarkW500Text
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 23.sp,
                                                    ),
                                                  ),
                                                  20.sbh,
                                                  Text(
                                                    'Beef patty with buns, lettuce, tomatoes, cheese, and ketchup.',
                                                    style: kSize18DarkW500Text
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  20.sbh,
                                                  Text(
                                                    '\$02.15',
                                                    style: kSize24DarkW500Text
                                                        .copyWith(
                                                            fontSize: 29.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: AppColors
                                                                .primary),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                                top: 0,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.16,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.16,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: AppColors.silver,
                                                      boxShadow: [
                                                        BoxShadow(
                                                            offset:
                                                                Offset(0, 3),
                                                            blurRadius: 3,
                                                            spreadRadius: 0,
                                                            color: AppColors
                                                                .black
                                                                .withOpacity(
                                                                    .45))
                                                      ]),
                                                  child: Center(
                                                    child: Image.asset(
                                                        AppImages.burger),
                                                  ),
                                                  padding: EdgeInsets.all(20.h),
                                                ))
                                          ],
                                        ),
                                      );
                                    })
                                : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64.r), bottomRight: Radius.circular(64.r)),
                                          child: Image.asset(
                                            AppImages.burger_cover,
                                            height: 540.h,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          )),
                                      30.sbh,
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                                        child: Row(
                                          children: [
                                            Text('Customize Your Burger to Taste', style: kSize22DarkW500Text.copyWith(
                                              color: AppColors.pink
                                            ),),
                                            Spacer(),
                                            Text('Step 3/3 : Buns', style: kSize20DarkW500Text,)
                                          ],
                                        ),
                                      ),
                                      30.sbh,
                                      Container(
                                        height: 95.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0,3),
                                              blurRadius: 5,
                                              spreadRadius: 0,
                                              color: AppColors.black.withOpacity(.05)
                                            )
                                          ]
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                                        child: Row(
                                          children: [
                                            Image.asset(AppImages.bun),
                                          ],
                                        ),
                                      ),
                                      30.sbh,
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                                        child: GridView.builder(
                                            itemCount: 8,
                                            shrinkWrap: true,
                                            gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 7,
                                                crossAxisSpacing: 8,
                                                mainAxisSpacing: 8,
                                                ),
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
                                                    Image.asset(AppImages.bun),
                                                    Text('Long bun', style: kSize18DarkW500Text.copyWith(fontSize: 15.sp),)
                                                  ],
                                                ),
                                              );
                                            }),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                                        child: Text('Add note', style: kSize22DarkW500Text.copyWith(color: AppColors.pink),),
                                      ),
                                      20.sbh,
                                      Container(
                                        width: double.infinity,
                                        height: MediaQuery.of(context).size.height * 0.05,
                                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: AppColors.white,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16.r),
                                              borderSide: BorderSide.none,
                                            ),
                                            contentPadding: EdgeInsets.all(16.0),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(32.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.black.withOpacity(.12),
                                              spreadRadius: 0,
                                              blurRadius: 10,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                      ),
                                      30.sbh,
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                                        child: Row(
                                          children: [
                                            TextButton(
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
                                                )),
                                            20.sbw,
                                            TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: AppColors.light_lavender,
                                                  fixedSize: Size(288.w, 52.h),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(16
                                                        .r), // Set the border radius here
                                                  ),
                                                ),
                                                onPressed: () {

                                                },
                                                child: Center(
                                                  child: Text(
                                                    'Next',
                                                    style: kSize18DarkW500Text,
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                      20.sbh,
                                    ],
                                  ),
                          )),
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
                                      onPressed: () {},
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
                )),
          ],
        ),
      ),
    );
  }
}
