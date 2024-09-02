import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../utils/style/colors.dart';
import 'calculation_options_bottom_sheet.dart';

class CalculationOptionsWidget extends StatelessWidget {
  const CalculationOptionsWidget({super.key});

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
            "Варианты расчета",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(height: 20.h),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                side: BorderSide(width: 1.w, color: AppColors.cCECECE),
                padding: EdgeInsets.only(right: 5.w, left: 10.w),
              ),
              onPressed: () {
                showModalBottomSheet(
                  useRootNavigator: true,
                  barrierColor: Colors.black.withOpacity(0.5),
                  isScrollControlled: true,
                  backgroundColor: AppColors.transparent,
                  // barrierColor: AppColors.transparent,
                  context: context,
                  builder: (context) => const CalculationOptionsBottomSheet(),
                );
              },
              child: SizedBox(
                height: 56.h,
                child: Row(
                  children: [
                    Text(
                      "5 часов",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 17.sp),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.c161616,
                      size: 15.sp,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
