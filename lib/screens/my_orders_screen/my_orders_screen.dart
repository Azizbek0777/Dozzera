import 'package:dozzer/screens/my_orders_screen/widgets/add_button_widget.dart';
import 'package:dozzer/screens/my_orders_screen/widgets/orders_widget.dart';
import 'package:dozzer/screens/my_orders_screen/widgets/tab_widgets.dart';
import 'package:dozzer/utils/style/colors.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000,
      body: Column(
        children: [
          CustomAppBar(
            title: 'Мои Заказы',
            leadingIcon: "arrow",
            onTapLeading: () {
              Navigator.pop(context);
            },
          ),
          const TabWidgets(),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return const OrdersWidget();
                  })),
          const AddButtonWidget()
        ],
      ),
      // bottomNavigationBar: const AddButtonWidget(),
    );
  }
}
