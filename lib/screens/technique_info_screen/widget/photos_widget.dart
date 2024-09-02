import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class PhotosWidget extends StatelessWidget {
  final int imageLength;

  const PhotosWidget({super.key, required this.imageLength});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      margin: EdgeInsets.only(top: 5.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Text(
            "Реальные фото техники",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 17.sp,
                  color: AppColors.c000000,
                ),
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
                      color: AppColors.c000000,
                      border: Border.all(
                        color: AppColors.white,
                        width: 2.w,
                      ),
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
                      color: AppColors.black,
                      border: Border.all(
                        color: AppColors.white,
                        width: 2.w,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "+$imageLength",
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 10.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
