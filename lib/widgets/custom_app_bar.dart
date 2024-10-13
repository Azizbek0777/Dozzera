import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/style/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String? leadingIcon;
  final String? actionIcon;
  final VoidCallback? onTapLeading;
  final VoidCallback? onTapAction;
  final String? title;
  final bool? isMarginAndBorder;

  const CustomAppBar({
    super.key,
    this.actionIcon,
    this.leadingIcon,
    this.onTapAction,
    this.onTapLeading,
    this.title,
    this.isMarginAndBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114.h,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 15.h),
      margin: EdgeInsets.only(bottom: isMarginAndBorder ?? false ? 0 : 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(isMarginAndBorder ?? false ? 0 : 10.r),
            bottomLeft: Radius.circular(isMarginAndBorder ?? false ? 0 : 10.r),
          ),
          color: AppColors.white),
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          SizedBox(width: 10.w),
          leadingIcon != null
              ? InkWell(
                  onTap: onTapLeading,
                  child: CircleAvatar(
                    backgroundColor: AppColors.cf4f4f4,
                    radius: 22.h,
                    child: SvgPicture.asset("assets/icons/svg/$leadingIcon.svg"),
                  ),
                )
              : CircleAvatar(
                  backgroundColor: AppColors.transparent,
                  radius: 22.h,
                ),
          const Spacer(),
          if (title != null)
            Text(
              title!,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
          const Spacer(),
          actionIcon != null
              ? InkWell(
            onTap: onTapAction,

                child: CircleAvatar(
                    backgroundColor: AppColors.cf4f4f4,
                    radius: 22.h,
                    child: SvgPicture.asset("assets/icons/svg/$actionIcon.svg"),
                  ),
              )
              : CircleAvatar(
                  backgroundColor: AppColors.transparent,
                  radius: 22.h,
                ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
