import 'package:get/get.dart';

import 'app_name.dart';

import '../bindings/profile_b.dart';
import '../bindings/add_b.dart';
import '../views/home_page.dart';
import '../views/profile_page.dart';
import '../views/add_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => ProfilePage(),
      binding: ProfileB(),
    ),
    GetPage(
      name: RouteName.add,
      page: () => AddPage(),
      binding: AddUserB(),
    ),
  ];
}
