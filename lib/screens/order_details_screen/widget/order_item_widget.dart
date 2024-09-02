import 'package:dozzer/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';
import '../../main_screen/widgets/address_widget.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174.h,
      width: 100,
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.cf4f4f4,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteList.orderStatus, arguments: "Заказ №1234");
        },
        child: Padding(
          padding: EdgeInsets.all(13.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 24.h,
                    width: 98.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.h),
                      color: AppColors.c000000.withOpacity(0.04),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 24.h,
                          width: 24.h,
                          decoration: BoxDecoration(
                            color: AppColors.c000000.withOpacity(0.08),
                            borderRadius: BorderRadius.circular(100.h),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.date_range_outlined,
                              size: 10.sp,
                              color: AppColors.c000000,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          "12/08/2024",
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                color: AppColors.c000000.withOpacity(0.4),
                              ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 24.h,
                    width: 67.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.h),
                      color: AppColors.c000000.withOpacity(0.04),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 24.h,
                          width: 24.h,
                          decoration: BoxDecoration(
                            color: AppColors.c000000.withOpacity(0.08),
                            borderRadius: BorderRadius.circular(100.h),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.access_time_filled_outlined,
                              size: 10.sp,
                              color: AppColors.c000000,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          "17:00",
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                color: AppColors.c000000.withOpacity(0.4),
                              ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 24.h,
                    // width: 69.w,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.h),
                      color: AppColors.c34C759.withOpacity(0.2),
                    ),
                    child: Text(
                      "Доставка",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColors.c34C759),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "Заказ №1234",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 24.sp),
              ),
              SizedBox(height: 5.h),
              const AddressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
