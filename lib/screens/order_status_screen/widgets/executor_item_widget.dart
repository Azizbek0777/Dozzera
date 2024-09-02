import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../utils/style/colors.dart';

class ExecutorItemWidget extends StatelessWidget {
  const ExecutorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.cf4f4f4,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32.r,
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Anna Smith",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 17.sp,
                    ),
              ),
              Text(
                "Электрик • Опыт 7 лет",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 13.sp, color: AppColors.c000000.withOpacity(0.4)),
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/svg/arrow_small.svg",
            colorFilter: const ColorFilter.mode(
              AppColors.c999999,
              BlendMode.srcIn,
            ),
          )
        ],
      ),
    );
  }
}
