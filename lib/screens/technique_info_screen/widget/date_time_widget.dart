import 'package:dozzer/screens/technique_info_screen/widget/calendar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});

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
            "Дата и время",
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
                  useRootNavigator: false,
                  barrierColor: Colors.black.withOpacity(0.5),
                  isScrollControlled: true,
                  backgroundColor: AppColors.transparent,
                  // barrierColor: AppColors.transparent,
                  context: context,
                  builder: (context) => const CalendarWidget(),
                );
              },
              child: SizedBox(
                height: 56.h,
                child: Row(
                  children: [
                    Text(
                      "17 июль 2024 г., 17:00",
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
