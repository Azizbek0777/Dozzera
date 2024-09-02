import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/screens/order_details_screen/widget/order_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';
import 'address_widget.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: OrderItemWidget()),
        SizedBox(width: 5.w),
        Container(
          height: 174.h,
          width: 44.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.c34C759,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteList.orderList);
            },
            child: const Icon(
              Icons.arrow_forward,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }
}
