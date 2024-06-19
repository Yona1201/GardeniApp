import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dashboardsellerScreen/views/dashboardseller_screen_view.dart';

class LoginSellerScreenController extends GetxController {
  //TODO: Implement LoginSellerScreenController

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final count = 0.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
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
  Future<void> registerSeller() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        User? user = userCredential.user;
        if (user != null) {
          await _firestore.collection('users').doc(user.uid).set({
            'email': email,
            'role': 'seller',
          });

          Get.snackbar('Success', 'Seller account created successfully');
          // Optionally, navigate to seller dashboard or login screen
        }
      } catch (e) {
        Get.snackbar('Registration Error', e.toString());
      }
    } else {
      Get.snackbar('Input Error', 'Please check your inputs');
    }
  }

  Future<void> loginSeller() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        User? user = userCredential.user;
        if (user != null) {
          DocumentSnapshot userDoc =
              await _firestore.collection('users').doc(user.uid).get();

          if (userDoc.exists && userDoc['role'] == 'seller') {
            Get.offAll(() => DashboardsellerScreenView());
          } else {
            Get.snackbar(
                'Access Denied', 'You are not authorized to access this area');
          }
        }
      } catch (e) {
        Get.snackbar('Login Error', e.toString());
      }
    } else {
      Get.snackbar('Input Error', 'Please enter both email and password');
    }
  }
}
