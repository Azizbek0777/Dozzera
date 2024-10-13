import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../route/route_constants.dart';
import '../../../utils/style/colors.dart';
import '../../../widgets/custom_button.dart';
import 'check_button.dart';

class PriceBottomSheet extends StatefulWidget {
  const PriceBottomSheet({super.key});

  @override
  State<PriceBottomSheet> createState() => _PriceBottomSheetState();
}

class _PriceBottomSheetState extends State<PriceBottomSheet> {
  Duration duration = const Duration(hours: 1, minutes: 23);
  int status = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
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
                  SizedBox(height: 50.h),
                  Text(
                    "Вариант заказа",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 20.h),
                  CheckButton(
                    isCheck: status == 3,
                    onPressed: () {
                      setState(() {
                        status = 3;
                      });
                    },
                    label: "Фиксированная цена",
                    isTime: false,
                    isCall: false,
                  ),
                  SizedBox(height: 5.h),
                  CheckButton(
                    onPressed: () {
                      setState(() {
                        status = 4;
                      });
                    },
                    isCheck: status == 4,
                    label: "Предложить свою цену",
                    isTime: false,
                    isCall: false,
                  ),
                  SizedBox(height: 5.h),
                  if(status == 4)
                  Container(
                    height: 56.h,
                    decoration: BoxDecoration(
                      color: AppColors.cf4f4f4,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Введите сумму",
                        hintStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: AppColors.c000000.withOpacity(0.4),
                              fontSize: 17.sp,
                            ),
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.cf4f4f4)),
                        border: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.cf4f4f4)),
                      ),
                      expands: true,
                      maxLines: null,
                      cursorHeight: 20.h,
                      keyboardType: TextInputType.number,
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteList.myOrders);

              },
              label: "Сохрани ть"),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
