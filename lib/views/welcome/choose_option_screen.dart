import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/controllers/welcome_controller.dart';
import 'package:food_tablet_app/utils/enums/enums.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';
import 'package:food_tablet_app/utils/values/app_colors/app_colors.dart';
import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:food_tablet_app/utils/values/styles/styles.dart';
import 'package:food_tablet_app/views/home/home_screen.dart';
import 'package:food_tablet_app/views/widgets/welcome/order_option_widget.dart';
import 'package:get/get.dart';

class ChooseOptionScreen extends StatelessWidget {
  const ChooseOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.option_background),
                fit: BoxFit.cover)),
        child: GetBuilder<WelcomeController>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Image.asset(AppImages.woman),
                      150.sbh,
                    ],
                  ),
                  Positioned(
                    child: RichText(
                        text: TextSpan(
                            text: 'Bonj',
                            style: kSize24DarkW500Text.copyWith(
                              fontSize: 167.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                            children: [
                          TextSpan(
                              text: 'our',
                              style: kSize24DarkW500Text.copyWith(
                                fontSize: 167.sp,
                                fontWeight: FontWeight.w700,
                              ))
                        ])),
                  )
                ],
              ),
              60.sbh,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.orderOption = OrderOption.dine;
                      controller.update();
                    },
                    child: OrderOptionWidget(
                        text: 'On the spot',
                        image: AppImages.dine_in,
                        subText: 'We serve you on a platter',
                      backgroundColor: controller.orderOption == OrderOption.dine ? AppColors.peach : AppColors.white,
                    ),
                  ),
                  100.sbw,
                  GestureDetector(
                    onTap: () {
                      controller.orderOption = OrderOption.takeAway;
                      controller.update();
                    },
                    child: OrderOptionWidget(
                        text: 'Take away',
                        image: AppImages.bag,
                        subText: 'It\'s in the bag',
                      backgroundColor: controller.orderOption == OrderOption.takeAway ? AppColors.peach : AppColors.white,
                    ),
                  ),
                ],
              ),
              60.sbh,
              Text(
                'Select language',
                style: kSize24DarkW500Text.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 40.sp,
                    color: AppColors.white),
              ),
              40.sbh,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => HomeScreen());
                    },
                    child: Image.asset(
                      AppImages.dutch,
                      height: 156.h,
                      width: 153.w,
                    ),
                  ),
                  40.sbw,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => HomeScreen());
                    },
                    child: Image.asset(
                      AppImages.english,
                      height: 180.h,
                      width: 195.w,
                    ),
                  ),
                  40.sbw,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => HomeScreen());
                    },
                    child: Image.asset(
                      AppImages.arabic,
                      height: 180.h,
                      width: 200.w,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
