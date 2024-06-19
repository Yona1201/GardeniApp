import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreenController extends GetxController {
  //TODO: Implement DashboardScreenController
  TextEditingController searchController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  var userName = ''.obs;
  var gambar = ''.obs;
  var userEmail = ''.obs;
  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    await fetchUserData();
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
  Future<void> fetchUserData() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot userDoc =
            await _firestore.collection('users').doc(user.uid).get();
        if (userDoc.exists) {
          userName.value = userDoc['name'];
          gambar.value = userDoc['gambar'];
          userEmail.value = userDoc['email'];
        }
      }
    } catch (e) {
      Get.snackbar(
        'Error fetching user data',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
