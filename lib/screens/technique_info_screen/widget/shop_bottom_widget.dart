import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopButtonWidget extends StatelessWidget {
  const ShopButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 132.h,
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
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
                ),
                const Spacer(),
                Text(
                  "от 300 000 сум",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            CustomButton(onPressed: () {}, label: "Добавить в заказы"),
            SizedBox(height: 15.h),
          ],
        ));
  }
}
