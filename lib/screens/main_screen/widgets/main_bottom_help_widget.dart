import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainBottomHelpWidget extends StatelessWidget {
  const MainBottomHelpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Нужна помощь?",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 17.sp,
                      color: AppColors.c000000,
                    ),
              ),
              Text(
                "Мы поможем!",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 15.sp,
                    ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 22.h,
            backgroundColor: AppColors.c34C759,
            child: const Icon(
              Icons.call,
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
