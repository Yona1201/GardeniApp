import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DashboardsellerScreenController extends GetxController {
  //TODO: Implement DashboardsellerScreenController
  final List<String> statusOptions = [
    "Order is received",
    "Processing",
    "Shipped",
    "On the way",
    "Order delivered"
  ];
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

  void increment() => count.value++;
  Future<void> updateOrderStatus(String docId, String status) async {
    await FirebaseFirestore.instance.collection('orders').doc(docId).update({
      'status': status,
      'tracking_time': Timestamp.now(), // Update tracking time to current time
    }).then((_) {
      print("Order status updated to $status");
    }).catchError((error) {
      print("Failed to update order status: $error");
    });
  }
}
