import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class TechniqueName extends StatelessWidget {
  final String name;
  final String image;

  const TechniqueName({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Image.asset(
             image,
              height: 200.h,
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                child: Text(
                 name,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColors.c000000,
                        fontSize: 22.sp,
                      ),
                ),
              ))
        ],
      ),
    );
  }
}
