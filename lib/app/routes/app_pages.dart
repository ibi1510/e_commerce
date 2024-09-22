import 'package:get/get.dart';

import '../modules/home/bindings/bottom_binding.dart';
import '../modules/home/views/bottom_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static var  INITIAL = Routes.BOTTOM;

  static final routes = [
    GetPage(
      name: _Paths.BOTTOM,
      page: () => const Bottom(),
      binding: BottomBinding(),
    ),
  ];
}
