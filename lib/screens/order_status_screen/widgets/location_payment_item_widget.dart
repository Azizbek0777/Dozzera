import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/style/colors.dart';

class LocationItemWidget extends StatelessWidget {
  const LocationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.cf4f4f4,
      ),
      child: Row(
        children: [
          Container(
            height: 70.w,
            width: 70.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.cECECEC,
            ),
            child: SvgPicture.asset("assets/icons/svg/location.svg"),
          ),
          SizedBox(width: 15.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Адрес доставки",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 17.sp,
                    ),
              ),
              Text(
                "ул. Уста-Ширин, 52",
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
          ),
          SizedBox(width: 10.w)
        ],
      ),
    );
  }
}
