import 'package:dozzer/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/style/colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_widget_design.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          CustomAppBar(
            leadingIcon: "arrow",
            onTapLeading: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          const CustomBottomWidgetDesign()
        ],
      ),
    );
  }
}
