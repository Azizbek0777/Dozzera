import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../route/route_constants.dart';

class ServiceItemInfo extends StatelessWidget {
  final String name;
  final int videosLength;

  const ServiceItemInfo({
    super.key,
    required this.name,
    required this.videosLength,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      margin: EdgeInsets.only(bottom: 5.h),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColors.white),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteList.techniqueInfo, arguments: name);
        },
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              left: 10.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontSize: 20.sp,
                          color: AppColors.c000000,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "-",
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.c000000,
                            ),
                      ),
                      Text(
                        "до 28 м",
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.c000000,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "-",
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.c000000,
                            ),
                      ),
                      Text(
                        "до 28 м",
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.c000000,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10.h,
              left: 10.w,
              child: Row(
                children: [
                  Text(
                    "от 300 000сум/",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: AppColors.c000000,
                        ),
                  ),
                  Text(
                    "сутки",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.c000000,
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  AppImages.excavator,
                  height: 150.h,
                ))
          ],
        ),
      ),
    );
  }
}
