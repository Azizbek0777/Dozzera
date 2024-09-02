import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/screens/main_screen/widgets/main_bottom_help_widget.dart';
import 'package:dozzer/screens/main_screen/widgets/main_item.dart';
import 'package:dozzer/screens/main_screen/widgets/order_widget.dart';
import 'package:dozzer/screens/main_screen/widgets/search_order.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/style/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000,
      body: Column(
        children: [
          CustomAppBar(
            title: "Dozzera",
            leadingIcon: "burger",
            onTapLeading: () {},
            actionIcon: "search",
            onTapAction: () {
              Navigator.pushNamed(context, RouteList.orderDetails);
              // Navigator.pushNamed(context, RouteList.myOrders);
            },
          ),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const OrderWidget(),
                      SizedBox(height: 5.h),
                      const SearchOrder(),
                      SizedBox(height: 5.h),
                      const MainItem(
                        width: double.infinity,
                        videosLength: 40,
                        name: 'Услуги Спецтехники',
                        imageName: AppImages.specialEquipmentServices,
                        imageFit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.5.w,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) => const MainItem(
                      width: double.infinity,
                      videosLength: 40,
                      name: 'Услуги\n Спецтехники',
                      imageName: AppImages.specialEquipmentServices,
                      imageFit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MainBottomHelpWidget(),
    );
  }
}
