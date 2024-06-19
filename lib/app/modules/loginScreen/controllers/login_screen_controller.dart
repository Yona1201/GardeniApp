import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gardeniapp/app/modules/navigation/views/navigation_view.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  //TODO: Implement LoginScreenController
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
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

  // Function to handle user login
  Future<void> loginUser() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: userNameController.text, password: passwordController.text);
      // Navigate to home or other screen if success
      Get.offAll(() => NavigationView());
    } catch (e) {
      Get.snackbar('Login Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
