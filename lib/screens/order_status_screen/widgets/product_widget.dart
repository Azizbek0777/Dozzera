import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Товар",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColors.cf4f4f4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Услуга",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
                ),
                SizedBox(height: 15.h),
                Text(
                  "Категории",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14.sp, color: AppColors.c000000.withOpacity(0.4)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "5 x 100 000 сум /",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
                    ),
                    Text(
                      "час",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14.sp, color: AppColors.c000000.withOpacity(0.4)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
