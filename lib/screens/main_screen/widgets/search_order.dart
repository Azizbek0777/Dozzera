import 'package:dozzer/main.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:svg_flutter/svg.dart';

class SearchOrder extends StatefulWidget {
  const SearchOrder({super.key});

  @override
  State<SearchOrder> createState() => _SearchOrderState();
}

class _SearchOrderState extends State<SearchOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.cE9E9E9,
                highlightColor: AppColors.c000000,
                child: Text(
                  "Поиск исполнителя",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 18.sp),
                ),
              ),
              const Spacer(),
              Text(
                "00:20",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
              )
            ],
          ),
          Text(
            "5 свободных исполнителей на линии",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: AppColors.c000000.withOpacity(0.4),
              fontFamily: 'SF Pro Display',
            ),
          ),
          SizedBox(height: 15.h),
          LinearProgressIndicator(
            value: 0.1,
            color: AppColors.cFFCC00,
            backgroundColor: AppColors.c000000.withOpacity(0.2),
          ),
          SizedBox(height: 25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.cf4f4f4,
                    radius: 30.h,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/icons/svg/close.svg"),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Отменить",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.c000000,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro Display",
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.cf4f4f4,
                    radius: 30.h,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/icons/svg/burger.svg"),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Детали",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.c000000,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro Display",
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
