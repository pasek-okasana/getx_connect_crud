import 'package:get/get.dart';

import '../controllers/add_c.dart';

class AddUserB implements Bindings {
  @override
  void dependencies() {
    Get.put(AddC());
  }
}
