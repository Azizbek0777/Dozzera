import 'package:dozzer/screens/services_screen/widgets/service_item_info.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/style/colors.dart';

class ServiceItemScreen extends StatefulWidget {
  final String serviceName;

  const ServiceItemScreen({super.key, required this.serviceName});

  @override
  State<ServiceItemScreen> createState() => _ServiceItemScreenState();
}

class _ServiceItemScreenState extends State<ServiceItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.c000000,
        body: Column(
          children: [
            CustomAppBar(
              title: widget.serviceName,
              onTapLeading: () {
                Navigator.pop(context);
              },
              leadingIcon: "arrow",
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 20,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return const ServiceItemInfo(
                      name: "Экскаваторы",
                      videosLength: 40,
                    );
                  }),
            ),
          ],
        ));
  }
}
