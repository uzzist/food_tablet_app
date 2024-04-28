import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_app/utils/extensions/extensions.dart';

import '../../utils/values/app_colors/app_colors.dart';
import '../../utils/values/styles/styles.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'How do you want to adjust the \$45.07',
          style: kSize24DarkW500Text.copyWith(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.48,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 5,
                      spreadRadius: 0,
                      color: AppColors.black.withOpacity(.08)
                    )
                  ],
                  color: AppColors.beige,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(32.r), bottomLeft: Radius.circular(32.r))
                ),
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text('Item #1', style: kSize24DarkW500Text.copyWith(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primary
                      ),),
                    ),
                    RadioListTile<String>(
                      contentPadding: EdgeInsets.zero,
                      activeColor: AppColors.pink,
                      title: Text('1x Special Chicken burger', style: kSize24DarkW500Text.copyWith(
                        fontSize: 31.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColors.pink
                      ),),
                      value: '1x Special Chicken burger',
                      groupValue: '1x Special Chicken burger',
                      onChanged: (value) {
                      },
                    ),
                    Text('Type: Plain', style: kSize24DarkW500Text.copyWith(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.normal
                    ),),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Condiments: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Salade, Tomate,\nOignon, Cheddar,\nOignons Frits', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$7.00', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                          color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sauces: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Bigy Burgers, Hannibal', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$10.2', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Formulae: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Frites, Pom\'s', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$0.05', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Extras: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Poulet Fume Lardens', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$0.05', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Viands: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Vianda hacher,\nPoulet Pane', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$0.05', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      children: [
                        Container(
                          height: 51.h,
                          width: 51.w,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: AppColors.primary, size: 30.h,),
                            padding: EdgeInsets.zero,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle
                          ),
                        ),
                        40.sbw,
                        Container(
                          height: 51.h,
                          width: 51.w,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete, color: AppColors.primary, size: 30.h,),
                            padding: EdgeInsets.zero,
                          ),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 51.h,
                          width: 173.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.r),
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,3),
                                blurRadius: 5,
                                spreadRadius: 0,
                                color: AppColors.black.withOpacity(.16)
                              )
                            ]
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 29.h,
                                  width: 29.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.beige,
                                    shape: BoxShape.circle
                                  ),
                                ),
                                Text('2', style: kSize24DarkW500Text,),
                                Container(
                                  height: 29.h,
                                  width: 29.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.beige,
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('\$14.00', style: kSize24DarkW500Text.copyWith(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              20.sbw,
              Container(
                width: MediaQuery.of(context).size.width * 0.48,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,3),
                          blurRadius: 5,
                          spreadRadius: 0,
                          color: AppColors.black.withOpacity(.08)
                      )
                    ],
                    color: AppColors.light_lavender,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(32.r), bottomLeft: Radius.circular(32.r))
                ),
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text('Item #2', style: kSize24DarkW500Text.copyWith(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.primary
                      ),),
                    ),
                    RadioListTile<String>(
                      contentPadding: EdgeInsets.zero,
                      activeColor: AppColors.pink,
                      title: Text('3x Special Beef burger', style: kSize24DarkW500Text.copyWith(
                          fontSize: 31.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.pink
                      ),),
                      value: '1x Special Chicken burger',
                      groupValue: '1x Special Chicken burger',
                      onChanged: (value) {
                      },
                    ),
                    Text('Type: Plain', style: kSize24DarkW500Text.copyWith(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.normal
                    ),),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Condiments: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Salade, Tomate,\nOignon, Cheddar,\nOignons Frits', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$7.00', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sauces: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Bigy Burgers, Hannibal', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$10.2', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Formulae: ', style: kSize24DarkW500Text.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('Frites, Pom\'s', style: kSize24DarkW500Text.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.normal
                        ),),
                        Text('+ \$0.05', style: kSize24DarkW500Text.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.pink
                        ),),
                      ],
                    ),
                    30.sbh,
                    Row(
                      children: [
                        Container(
                          height: 51.h,
                          width: 51.w,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: AppColors.primary, size: 30.h,),
                            padding: EdgeInsets.zero,
                          ),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle
                          ),
                        ),
                        40.sbw,
                        Container(
                          height: 51.h,
                          width: 51.w,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete, color: AppColors.primary, size: 30.h,),
                            padding: EdgeInsets.zero,
                          ),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 51.h,
                          width: 173.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),
                              color: AppColors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,3),
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    color: AppColors.black.withOpacity(.16)
                                )
                              ]
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 29.h,
                                  width: 29.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.beige,
                                      shape: BoxShape.circle
                                  ),
                                ),
                                Text('2', style: kSize24DarkW500Text,),
                                Container(
                                  height: 29.h,
                                  width: 29.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.beige,
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('\$14.00', style: kSize24DarkW500Text.copyWith(
                            fontSize: 35.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
