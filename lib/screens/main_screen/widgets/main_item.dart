import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class MainItem extends StatelessWidget {
  final double width;
  final int videosLength;
  final String name;
  final String imageName;
  final BoxFit imageFit;

  const MainItem({
    super.key,
    required this.width,
    required this.videosLength,
    required this.name,
    required this.imageName,
    required this.imageFit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      width: width,
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20.r),
        image: DecorationImage(
          image: AssetImage(imageName),
          fit: imageFit,
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteList.serviceList, arguments: name);
        },
        child: Stack(
          children: [
            if (videosLength != 0)
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 12.h, left: 12.h),
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: AppColors.white,
                  ),
                  child: Text(
                    "$videosLength видов",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
            if (name != "")
              Positioned(
                  bottom: 12.h,
                  left: 12.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.start,
                        maxLines: 3,
                      ),
                    ],
                  ))
          ],
        ),
      ),
    );
  }
}
