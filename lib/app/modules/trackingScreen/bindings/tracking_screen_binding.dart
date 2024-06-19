import 'package:get/get.dart';

import '../controllers/tracking_screen_controller.dart';

class TrackingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrackingScreenController>(
      () => TrackingScreenController(),
    );
  }
}
