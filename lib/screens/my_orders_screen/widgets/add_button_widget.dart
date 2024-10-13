import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const AddButtonWidget({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.r),
            topLeft: Radius.circular(10.r),
          ),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  "Подитог",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColors.c000000.withOpacity(0.4)),
                ),
                const Spacer(),
                Text(
                  "от 300 000 сум",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14.sp, color: AppColors.c000000.withOpacity(0.4)),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Divider(
              height: 1,
              color: AppColors.c161616.withOpacity(0.3),
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  "Цена",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
                ),
                const Spacer(),
                Text(
                  "от 300 000 сум",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp, color: AppColors.c993BF9),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  style: TextButton.styleFrom(fixedSize: Size(double.infinity, 56.h), backgroundColor: AppColors.c000000, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r))),
                  onPressed:onPressed,
                  child: Text(
                    "Добавить в заказы",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 17.sp),
                  )),
            ),
            SizedBox(height: 15.h),
          ],
        ));
  }
}
