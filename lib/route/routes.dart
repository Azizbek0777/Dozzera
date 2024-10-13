import 'package:dozzer/route/route_constants.dart';
import 'package:dozzer/screens/loading_screen/loading_screen.dart';
import 'package:dozzer/screens/main_screen/main_screen.dart';
import 'package:dozzer/screens/my_orders_screen/my_orders_screen.dart';
import 'package:dozzer/screens/onboarding_screen/onboarding_screen.dart';
import 'package:dozzer/screens/onboarding_screen/privacy_policy_screen.dart';
import 'package:dozzer/screens/order_details_screen/oreder_details_screen.dart';
import 'package:dozzer/screens/order_list_screen/order_list_screen.dart';
import 'package:dozzer/screens/order_status_screen/order_status_screen.dart';
import 'package:dozzer/screens/technique_info_screen/technique_info_screen.dart';
import 'package:flutter/cupertino.dart';

import '../screens/services_screen/service_item_screen.dart';
import '../screens/services_screen/service_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
        RouteList.initial: (context) => const SplashScreen(),
        RouteList.main: (context) => const MainScreen(),
        RouteList.serviceList: (context) => ServiceScreen(serviceName: setting.arguments as String),
        RouteList.serviceItem: (context) => ServiceItemScreen(serviceName: setting.arguments as String),
        RouteList.techniqueInfo: (context) => TechniqueInfoScreen(name: setting.arguments as String),
        RouteList.myOrders: (context) => const MyOrdersScreen(),
        RouteList.orderDetails: (context) => const OrederDetailsScreen(),
        RouteList.onboarding: (context) => const OnboardingScreen(),
        RouteList.privacyPolicy: (context) => const PrivacyPolicyScreen(),
        RouteList.orderList: (context) => const OrderListScreen(),
        RouteList.orderStatus: (context) => OrderStatusScreen(orderNumber: setting.arguments as String),
        RouteList.loading: (context) => const LoadingScreen(),

      };
}
