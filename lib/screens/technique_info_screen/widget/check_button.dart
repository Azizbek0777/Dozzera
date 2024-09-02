import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/style/colors.dart';

class CheckButton extends StatelessWidget {
  final String label;
  final bool isCheck;
  final VoidCallback onPressed;

  const CheckButton({
    super.key,
    required this.label,
    required this.isCheck,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
        ));
  }
}
