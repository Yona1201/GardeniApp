import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navigation/views/navigation_view.dart';

class RegisterScreenController extends GetxController {
  //TODO: Implement RegisterScreenController

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();
  final count = 0.obs;
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
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

  Future<void> registerUser() async {
    try {
      // Register user in Firebase Auth
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailEditTextController.text.trim(),
        password: passwordEditTextController.text.trim(),
      );

      // Store additional user details in Firestore
      await _firestore.collection('users').doc(userCredential.user?.uid).set({
        'name': nameEditTextController.text.trim(),
        'email': emailEditTextController.text.trim(),
        'gambar': "https://placehold.jp/50x50.png",
      });

      // Navigate to home or other screen if success
      Get.back();
    } catch (e) {
      Get.snackbar(
        'Error creating account',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
