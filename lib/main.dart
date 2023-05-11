import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_route_name.dart';
import 'views/home_page.dart';

import 'controllers/users_c.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userC = Get.put(UsersC());

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppRoute.pages,
    );
  }
}
