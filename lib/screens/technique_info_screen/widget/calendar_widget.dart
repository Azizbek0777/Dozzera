import 'package:dozzer/main.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../widgets/custom_button.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime dateTime = DateTime.now();
  int checkItem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100.h),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.r),
            topLeft: Radius.circular(10.r),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.h),
          Container(
            width: 56.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: AppColors.c999999,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Text(
                    "Дата",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: dateTime,
                    onDaySelected: (dateTime1, dateTime2) {
                      dateTime = dateTime1;
                    },
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Время",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w,vertical: 10.h),
                    child: Wrap(
                      spacing: 10,
                      runAlignment: WrapAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i < 16; i++)
                          TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: Size(80.w, 40.h),
                              backgroundColor: checkItem == i ? AppColors.c000000 : AppColors.cf4f4f4,
                            ),
                            onPressed: () {
                              setState(() {
                                checkItem = i;
                              });
                            },
                            child: Text(
                              "${i + 8}:00",
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(color: checkItem == i ? AppColors.white : AppColors.c000000, fontSize: 15.sp),
                            ),
                          )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                label: "Сохранить"),
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
