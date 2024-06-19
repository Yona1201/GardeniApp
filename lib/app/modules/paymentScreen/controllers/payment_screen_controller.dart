import 'package:get/get.dart';

class PaymentScreenController extends GetxController {
  //TODO: Implement PaymentScreenController
  final isCodSelected = true.obs;
  final isTunaiSelected = false.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String get selectedPaymentMethod {
    if (isCodSelected.value) {
      return "COD";
    } else if (isTunaiSelected.value) {
      return "Tunai";
    } else {
      return "Not selected";
    }
  }

  void increment() => count.value++;
}
