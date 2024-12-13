import 'package:flutter_fusion/presentation/home/views/home_view.dart';
import 'package:flutter_fusion/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      // binding:
    ),
  ];
}
