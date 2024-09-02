import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/screens/order_status_screen/widgets/price_item_widget.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllPriceWidget extends StatelessWidget {
  const AllPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.r),
            topLeft: Radius.circular(10.r),
          ),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            for (int i = 0; i < 3; i++) PriceItemWidget(),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  "Итого",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp),
                ),
                const Spacer(),
                Text(
                  "от 300 000 сум",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 17.sp, color: AppColors.c993BF9),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(double.infinity, 56.h),
                    backgroundColor: AppColors.white,
                    side: const BorderSide(color: AppColors.c000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, RouteList.orderDetails);
                  },
                  child: Text(
                    "Отменить заказ",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontSize: 17.sp,
                          color: AppColors.c000000,
                        ),
                  )),
            ),
            SizedBox(height: 15.h),
          ],
        ));
  }
}
