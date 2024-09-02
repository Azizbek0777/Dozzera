import 'package:dozzer/main.dart';
import 'package:dozzer/screens/technique_info_screen/widget/check_button.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:svg_flutter/svg.dart';

class CalculationOptionsBottomSheet extends StatefulWidget {
  const CalculationOptionsBottomSheet({super.key});

  @override
  State<CalculationOptionsBottomSheet> createState() => _CalculationOptionsBottomSheetState();
}

class _CalculationOptionsBottomSheetState extends State<CalculationOptionsBottomSheet> {
  Duration duration = const Duration(hours: 1, minutes: 23);

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
                    "Варианты расчета",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 20.h),
                  CheckButton(
                    isCheck: false,
                    onPressed: () {},
                    label: "За вызов",
                  ),
                  SizedBox(height: 5.h),
                  CheckButton(
                    onPressed: () {},
                    isCheck: false,
                    label: "За вызов",
                  ),
                  SizedBox(height: 5.h),
                  CheckButton(
                    onPressed: () {},
                    isCheck: true,
                    label: "Почасовой",
                  ),
                  Container(
                    height: 216.h,
                    padding: const EdgeInsets.only(top: 6.0),
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    color: CupertinoColors.systemBackground.resolveFrom(context),
                    child: SafeArea(
                      top: false,
                      child: CupertinoTimerPicker(
                        mode: CupertinoTimerPickerMode.hm,
                        initialTimerDuration: duration,
                        onTimerDurationChanged: (Duration newDuration) {
                          setState(() => duration = newDuration);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(onPressed: () {}, label: "Сохранить"),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
