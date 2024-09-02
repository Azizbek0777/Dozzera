import 'package:dozzer/screens/order_status_screen/widgets/all_price_widget.dart';
import 'package:dozzer/screens/order_status_screen/widgets/executor_widget.dart';
import 'package:dozzer/screens/order_status_screen/widgets/location_widget.dart';
import 'package:dozzer/screens/order_status_screen/widgets/payment_widget.dart';
import 'package:dozzer/screens/order_status_screen/widgets/product_widget.dart';
import 'package:dozzer/screens/order_status_screen/widgets/status_widget.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusScreen extends StatefulWidget {
  final String? orderNumber;

  const OrderStatusScreen({
    super.key,
    required this.orderNumber,
  });

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
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
            title: widget.orderNumber,
            actionIcon: "support",
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              children: [
                const StatusWidget(),
                SizedBox(height: 5.h),
                const ProductWidget(),
                SizedBox(height: 5.h),
                const ExecutorWidget(),
                SizedBox(height: 5.h),
                const LocationWidget(),
                SizedBox(height: 5.h),
                const PaymentWidget(),
                SizedBox(height: 5.h),
                const AllPriceWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
