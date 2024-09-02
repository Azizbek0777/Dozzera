import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../route/route_constants.dart';

class ServiceItem extends StatelessWidget {
  final String name;
  final int videosLength;


  const ServiceItem({
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
        onTap: (){
          Navigator.pushNamed(context, RouteList.serviceItem, arguments: name);
        },
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              left: 10.w,
              child: Text(
                name,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 20.sp,
                      color: AppColors.c000000,
                    ),
              ),
            ),
            Positioned(
              bottom: 10.h,
              left: 10.w,
              child: Text(
                "$videosLength видов",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14.sp, color: AppColors.c000000.withOpacity(0.4)),
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
