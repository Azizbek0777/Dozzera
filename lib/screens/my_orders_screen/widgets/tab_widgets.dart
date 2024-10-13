import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';

class TabWidgets extends StatefulWidget {
  const TabWidgets({super.key});

  @override
  State<TabWidgets> createState() => _TabWidgetsState();
}

class _TabWidgetsState extends State<TabWidgets> {
  int status = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 3; i++)
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(126.w, 70.h),
                  backgroundColor: i != status ? AppColors.white : AppColors.c000000,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              onPressed: () {
                setState(() {
                  status = i;
                });
              },
              child: Text(
                i == 0
                    ? "Аренда"
                    : i == 1
                        ? "Услуги"
                        : "Покупка",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: i == status ? AppColors.white : AppColors.c000000,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
