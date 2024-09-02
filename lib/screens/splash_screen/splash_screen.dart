import 'dart:async';

import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/utils/ui_needs/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openNextPage(context);
  }

  // GetStorage getStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(AppImages.logo)
          ),
    );
  }

  openNextPage(BuildContext context) async {
    Timer(const Duration(milliseconds: 500), () async {
      Navigator.pushNamed(context, RouteList.onboarding);
    });
  }
}
