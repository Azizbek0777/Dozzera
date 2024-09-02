import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class PriceItemWidget extends StatelessWidget {
  const PriceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
