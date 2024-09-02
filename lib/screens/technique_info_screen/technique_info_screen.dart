import 'package:dozzer/screens/technique_info_screen/widget/calculation_options_widget.dart';
import 'package:dozzer/screens/technique_info_screen/widget/characteristics_widget.dart';
import 'package:dozzer/screens/technique_info_screen/widget/date_time_widget.dart';
import 'package:dozzer/screens/technique_info_screen/widget/photos_widget.dart';
import 'package:dozzer/screens/technique_info_screen/widget/shop_bottom_widget.dart';
import 'package:dozzer/screens/technique_info_screen/widget/technique_name.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/style/colors.dart';

class TechniqueInfoScreen extends StatefulWidget {
  final String name;

  const TechniqueInfoScreen({
    super.key,
    required this.name,
  });

  @override
  State<TechniqueInfoScreen> createState() => _TechniqueInfoScreenState();
}

class _TechniqueInfoScreenState extends State<TechniqueInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000,
      body: Column(
        children: [
          CustomAppBar(
            title: widget.name,
            isMarginAndBorder: true,
            leadingIcon: "arrow",
            onTapLeading: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: ListView(
              physics:const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              children: [
                const TechniqueName(
                  name: "Веткоизмельчитель на базе \nМТЗ",
                  image: AppImages.excavator,
                ),
                const PhotosWidget(imageLength: 10),
                const CharacteristicsWidget(),
                const CalculationOptionsWidget(),
                const DateTimeWidget(),
                SizedBox(height: 10.h)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ShopButtonWidget(),
    );
  }
}
