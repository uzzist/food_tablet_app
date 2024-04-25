import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/controllers/home_controller.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';
import 'package:food_tablet_app/utils/values/app_colors/app_colors.dart';
import 'package:food_tablet_app/utils/values/styles/styles.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.find();

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
                padding: EdgeInsets.only(top: 20.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 5,
                      spreadRadius: 0,
                      color: AppColors.black.withOpacity(.2)
                    )
                  ]
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) => 30.sbh,
                  itemCount: homeController.menuOptionList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(homeController.menuOptionList[index].image, height: 148.h, width: 148.w,),
                          Text(homeController.menuOptionList[index].name, style: kSize20DarkW500Text.copyWith(
                            fontWeight: FontWeight.normal
                          ),),
                        ],
                      );
                    }
                ),
              )
          ),
          20.sbw,
          Expanded(
            flex: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,3),
                          blurRadius: 5,
                          spreadRadius: 0,
                          color: AppColors.black.withOpacity(.2)
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    40.sbh,
                    Text('Explore our mouthwatering burger\'s variety', style: kSize24DarkW500Text.copyWith(
                      color: AppColors.primary,
                    ),),


                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
