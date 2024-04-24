import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/utils/values/app_colors/app_colors.dart';
import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:food_tablet_app/utils/values/styles/styles.dart';
import 'package:food_tablet_app/views/welcome/choose_option_screen.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.start),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ChooseOptionScreen());
                  },
                  child: Container(
                    height: 330.h,
                    width: double.infinity,
                    color: Colors.white.withOpacity(.2),
                    child: Center(
                      child: Text('TOUCH TO START', style: kSize22DarkW500Text.copyWith(
                        fontSize: 120.sp,
                        color: AppColors.white
                      ),),
                    ),

                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
