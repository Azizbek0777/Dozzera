import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class OrderDetailsWidgets extends StatelessWidget {
  const OrderDetailsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            height: 70.h,
            width: 70.h,
            decoration: BoxDecoration(color: AppColors.cE8E8E8, borderRadius: BorderRadius.circular(10.r)),
            child: const Icon(Icons.location_on_sharp),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Адрес доставки",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.c161616,
                    ),
              ),
              SizedBox(height: 5.h),
              Text(
                "ул. Уста-Ширин, 52",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.c161616.withOpacity(0.4),
                    ),
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.c000000,
              size: 15.sp,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
