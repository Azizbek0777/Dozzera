import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class TabWidgets extends StatelessWidget {
  const TabWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 3; i++)
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(126.w, 70.h),
                  backgroundColor: i != 0 ? AppColors.white : AppColors.c000000,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              onPressed: () {},
              child: Text(
                "Аренда",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: i == 0 ? AppColors.white : AppColors.c000000,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
