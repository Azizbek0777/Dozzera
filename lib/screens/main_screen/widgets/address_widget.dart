import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 36.h,
          width: 36.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: AppColors.c000000.withOpacity(0.04),
          ),
          child: Icon(
            Icons.location_on_sharp,
            color: AppColors.c000000,
            size: 14.sp,
          ),
        ),
        SizedBox(width: 5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Адрес",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.c000000.withOpacity(0.4),
                  ),
            ),
            Text(
              "ул. Уста-Ширин, 52",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 15.sp,
                  ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 36.h,
          width: 57.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 36.h,
                  width: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.h),
                    color: AppColors.eaeaea,
                    border: Border.all(
                      color: AppColors.cf4f4f4,
                      width: 2.w,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(AppImages.excavator),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                child: Container(
                  height: 36.h,
                  width: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.h),
                    color: AppColors.eaeaea,
                    border: Border.all(
                      color: AppColors.cf4f4f4,
                      width: 2.w,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(AppImages.excavator),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
