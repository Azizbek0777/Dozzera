import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColors.white),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Статус заказа",
                style: TextStyle(
                  color: AppColors.c000000,
                  fontFamily: "SF Pro Display",
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
              const Spacer(),
              Container(
                height: 24.h,
                // width: 69.w,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.h),
                  color: AppColors.c34C759.withOpacity(0.2),
                ),
                child: Text(
                  "Доставка",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColors.c34C759),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 20,
                width: double.infinity,
                color: AppColors.cD9D9D9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: AppColors.cD9D9D9,
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: CircleAvatar(
                        radius: 36.r,
                        backgroundColor: AppColors.c34C759,
                        child: SvgPicture.asset("assets/icons/svg/check.svg"),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: AppColors.cD9D9D9,
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: CircleAvatar(
                        radius: 36.r,
                        backgroundColor: AppColors.c34C759,
                        child: SvgPicture.asset("assets/icons/svg/check.svg"),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: AppColors.cD9D9D9,
                  ),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: AppColors.cD9D9D9,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
