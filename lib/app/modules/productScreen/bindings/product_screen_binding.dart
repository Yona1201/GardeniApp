import 'package:get/get.dart';

import '../controllers/product_screen_controller.dart';

class ProductScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductScreenController>(
      () => ProductScreenController(),
    );
  }
}
