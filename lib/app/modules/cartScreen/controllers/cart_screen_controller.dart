import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../core/model/CartItem.dart';
import '../../../core/network/service.dart';
import '../../navigation/views/navigation_view.dart';

class CartScreenController extends GetxController {
  //TODO: Implement CartScreenController
  final RxInt totalPrice = 0.obs;

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

  void updateTotalPrice(int newPrice) {
    Future.microtask(() => totalPrice.value = newPrice);
  }

  Future<void> submitOrder(String paymentMethod) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null || user.email == null || totalPrice.value <= 0) {
      print("User not logged in, email not available, or cart is empty.");
      return;
    }

    final orderNumber = "#${DateTime.now().millisecondsSinceEpoch}";
    final timestamp = DateTime.now();

    // Fetch cart items
    final cartItems = await FirebaseFirestore.instance
        .collection('users-cart-items')
        .doc(user.email)
        .collection("items")
        .get();

    List<Map<String, dynamic>> items =
        cartItems.docs.map((doc) => doc.data()).toList();

    final orderData = {
      'orderNumber': orderNumber,
      'timestamp': timestamp,
      'totalPrice': totalPrice.value,
      'userId': user.uid,
      'email': user.email,
      'status': '',
      'tracking_time': timestamp,
      'paymentMethod': paymentMethod,
      'items': items,
    };

    // Add a new document in collection "orders"
    await FirebaseFirestore.instance
        .collection('orders')
        .add(orderData)
        .then((doc) async {
      print("Order successfully submitted with ID: ${doc.id}");
      await clearCart(user.email!);
      Get.offAll(() => NavigationView());
      Get.snackbar("Success", "Order submitted successfully");
    }).catchError((error) {
      print("Failed to submit order: $error");
    });
  }

  Future<void> clearCart(String email) async {
    await FirebaseFirestore.instance
        .collection('users-cart-items')
        .doc(email)
        .collection("items")
        .get()
        .then((snapshot) async {
      for (DocumentSnapshot ds in snapshot.docs) {
        await ds.reference.delete();
      }
    }).then((_) {
      updateTotalPrice(0); // Reset total price after clearing the cart
      print("Cart cleared and total price reset.");
    }).catchError((error) {
      print("Error clearing cart: $error");
    });
  }
}
