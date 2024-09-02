import 'package:dozzer/screens/order_status_screen/widgets/location_payment_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Форма оплаты",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 18.sp),
              ),
              Container(
                height: 24.h,
                // width: 69.w,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.h),
                  color: AppColors.cFF9500.withOpacity(0.2),
                ),
                child: Text(
                  "Захолдирован",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColors.cFF9500),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          const LocationItemWidget(),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
