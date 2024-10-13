import 'package:dozzer/screens/my_orders_screen/widgets/add_button_widget.dart';
import 'package:dozzer/screens/order_details_screen/widget/order_details_widgets.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../route/route_constants.dart';

class OrederDetailsScreen extends StatefulWidget {
  const OrederDetailsScreen({super.key});

  @override
  State<OrederDetailsScreen> createState() => _OrederDetailsScreenState();
}

class _OrederDetailsScreenState extends State<OrederDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000,
      body: Column(
        children: [
          CustomAppBar(
            title: "Детали заказа",
            leadingIcon: "arrow",
            onTapLeading: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return const OrderDetailsWidgets();
              },
            ),
          ),
          AddButtonWidget(
            onPressed: () {
              Navigator.pushNamed(context, RouteList.loading);
            },
          )
        ],
      ),
    );
  }
}
