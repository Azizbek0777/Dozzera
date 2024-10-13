import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersWidget extends StatelessWidget {
  const OrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      margin: EdgeInsets.only(top: 5.0.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100.h,
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Электрик",
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              fontSize: 18.sp,
                            ),
                      ),
                      const Spacer(),
                      Text(
                        "17 июль 2024 г., 17:00",
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 14.sp,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Категории",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.c000000.withOpacity(.4),
                        ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "5 x 100 000 сум / час",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 18.sp,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 5.w),
          Container(
            height: 100.h,
            width: 36.w,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const Center(
              child: Icon(Icons.add,color: AppColors.c000000,),
            ),
          )
        ],
      ),
    );
  }
}
