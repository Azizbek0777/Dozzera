import 'package:dozzer/screens/order_status_screen/widgets/executor_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class ExecutorWidget extends StatelessWidget {
  const ExecutorWidget({super.key});

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
          Text(
            "Исполнитель",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 15.h),
          const ExecutorItemWidget(),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
