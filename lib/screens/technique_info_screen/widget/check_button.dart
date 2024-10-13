import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/style/colors.dart';

class CheckButton extends StatelessWidget {
  final String label;
  final bool isCheck;
  final VoidCallback onPressed;
  final bool isTime;
  final bool isCall;

  const CheckButton({
    super.key,
    required this.label,
    required this.isCheck,
    required this.onPressed,
    required this.isTime,
    required this.isCall,
  });

  @override
  Widget build(BuildContext context) {
    return isTime || isCall
        ? Container(
            decoration: BoxDecoration(
              color: AppColors.cf4f4f4,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity, 56.h),
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                  ),
                  onPressed: onPressed,
                  child: Row(
                    children: [
                      Text(
                        label,
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 17.sp,
                            ),
                      ),
                      const Spacer(),
                      isCheck ? SvgPicture.asset("assets/icons/svg/outline_check.svg") : SvgPicture.asset("assets/icons/svg/outline.svg")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w),
                  child: Divider(
                    color: AppColors.c000000.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w),
                  child: SizedBox(
                    height: 56.h,
                    child: Row(
                      children: [
                        Text(
                          isCall ? "Цена" : "Часы смены",
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                fontSize: 15.sp,
                                color: AppColors.c000000.withOpacity(0.4),
                              ),
                        ),
                        const Spacer(),
                        Text(
                          isCall ? "50 000 сум" : "10 часов",
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                fontSize: 15.sp,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size(double.infinity, 56.h),
              backgroundColor: AppColors.cf4f4f4,
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
            ),
            onPressed: onPressed,
            child: Row(
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 17.sp,
                      ),
                ),
                const Spacer(),
                isCheck ? SvgPicture.asset("assets/icons/svg/outline_check.svg") : SvgPicture.asset("assets/icons/svg/outline.svg")
              ],
            ),
          );
  }
}
