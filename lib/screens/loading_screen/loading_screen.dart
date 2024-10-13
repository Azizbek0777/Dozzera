import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../utils/style/colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_widget_design.dart';
import '../../widgets/custom_button.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000,
      body: Column(
        children: [
          CustomAppBar(
            leadingIcon: "close",
            onTapLeading: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 144.h,
                    width: 144.h,
                    child: Stack(
                      children: [
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          top: 0,
                          child: CircularProgressIndicator(
                            color: AppColors.c34C759,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          top: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/svg/outline_icon.svg"),
                              SvgPicture.asset("assets/icons/svg/outline_icon.svg"),
                              SvgPicture.asset("assets/icons/svg/outline_icon.svg")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Ожидание отклика",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "5 свободных исполнителей на линии",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 15.sp,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.h),
            // height: 44.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: CustomButton(onPressed: () {  }, label: 'На главную',),
            )
          )
        ],
      ),
    );
  }
}
