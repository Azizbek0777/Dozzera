import 'package:dozzer/screens/services_screen/widgets/service_item.dart';
import 'package:dozzer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/style/colors.dart';

class ServiceScreen extends StatefulWidget {
  final String serviceName;

  const ServiceScreen({super.key, required this.serviceName});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.c000000,
        body: Column(
          children: [
            CustomAppBar(
              title: widget.serviceName,
              leadingIcon: "arrow",
              onTapLeading: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 20,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return const ServiceItem(
                      name: "Экскаваторы",
                      videosLength: 40,
                    );
                  }),
            ),
          ],
        ));
  }
}
