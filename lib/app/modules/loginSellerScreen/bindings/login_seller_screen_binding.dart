import 'package:get/get.dart';

import '../controllers/login_seller_screen_controller.dart';

class LoginSellerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginSellerScreenController>(
      () => LoginSellerScreenController(),
    );
  }
}
