import 'package:dozzer/screens/order_details_screen/widget/order_item_widget.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:dozzer/widgets/custom_bottom_widget_design.dart';
import 'package:flutter/material.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000,
      body: Column(
        children: [
          CustomAppBar(
            leadingIcon: "arrow",
            onTapLeading: () {
              Navigator.pop(context);
            },
            title: "Мои заказы",
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
              return const OrderItemWidget();
            }),
          ),
          const CustomBottomWidgetDesign(),
        ],
      ),
    );
  }
}
