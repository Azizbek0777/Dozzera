import 'package:dozzer/main.dart';
import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_bottom_widget_design.dart';
import 'package:dozzer/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../widgets/custom_app_bar.dart';
import 'cupertino_action.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          CustomAppBar(
            actionIcon: "close",
            onTapAction: () {
              Navigator.pushNamed(context, RouteList.main);
            },
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10.w, left: 10.w),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  Image.asset(
                    "assets/images/png/logo.png",
                    height: 102.h,
                    width: 100.w,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    "Добро пожаловать",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 36.sp,
                        ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Войдите в свой аккаунт через единую систему авторизации Pro ID",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 17.sp,
                        ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  const Spacer(),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteList.main);
                    },
                    label: "Войти по Pro ID",
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Продолжая вход, вы соглашаетесь с условиями",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.black.withOpacity(0.6),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteList.privacyPolicy);
                    },
                    child: Text(
                      "Политики конфиденциальности",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.black,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      showActionBlogsSheet(context);
                    },
                    child: Center(
                      child: Text(
                        "Соц. сети",
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.black,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Expanded(
                flex: 1,
                child: Container(
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      showActionSupportSheet(context);
                    },
                    child: Center(
                      child: Text(
                        "Поддержка",
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.black,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const CustomBottomWidgetDesign()
        ],
      ),
    );
  }
}
