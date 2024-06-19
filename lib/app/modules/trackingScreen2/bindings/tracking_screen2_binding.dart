import 'package:get/get.dart';

import '../controllers/tracking_screen2_controller.dart';

class TrackingScreen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrackingScreen2Controller>(
      () => TrackingScreen2Controller(),
    );
  }
}
