import 'package:get/get.dart';

import '../controllers/dashboardseller_screen_controller.dart';

class DashboardsellerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardsellerScreenController>(
      () => DashboardsellerScreenController(),
    );
  }
}
