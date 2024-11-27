import 'package:flutter/material.dart';
import 'package:frontend_animated_apps/presentation/dashboard/page/dashboard_page.dart';
import 'package:frontend_animated_apps/presentation/homepage/page/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const dashboard = "/";
  static const homePlayer = "/homePlayer";

  static final List<GetPage> routes = [
    GetPage(name: dashboard, page: () => const DashboardPage()),
    GetPage(name: homePlayer, page: () => const HomePage())
  ];
}
