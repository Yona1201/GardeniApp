import 'package:get/get.dart';

class NavigationController extends GetxController {
  //TODO: Implement NavigationController
  final selectedIndex = 0.obs;
  int get selectedIndexvalue => selectedIndex.value;
  final count = 0.obs;
  var tabIndex = 0;
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

  void increment() => count.value++;
  void changeTab(int index) {
    selectedIndex.value = index;
    update();
  }
}
