import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class CharacteristicsWidget extends StatelessWidget {
  const CharacteristicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      margin: EdgeInsets.only(top: 5.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Характеристики",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          for (int i = 0; i < 4; i++)
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Row(
                children: [
                  SizedBox(width: 5.w),
                  Text(
                    "-",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 16.sp,
                        ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Веткоизмельчитель на базе МТЗ",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 16.sp,
                        ),
                  )
                ],
              ),
            ),
          SizedBox(
            height: 70.h,
          )
        ],
      ),
    );
  }
}
