import 'package:get/get.dart';

import '../../update_data/controllers/update_data_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
     Get.lazyPut<UpdateDataController>(
      () => UpdateDataController(),
    );
  }
}
