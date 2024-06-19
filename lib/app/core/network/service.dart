import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../model/CartItem.dart';
import '../model/Product.dart';

class Service {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<List<Product>> getProducts() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('produk').get();
      return snapshot.docs
          .map((doc) => Product.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future addToCart(Product product) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var currentUser = _auth.currentUser;
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection("users-cart-items");
    return _collectionRef
        .doc(currentUser!.email)
        .collection("items")
        .doc()
        .set({
      'name': product.name,
      'price': product.price,
      'image': product.imageUrl,
      'quantity': 1
    }).then((value) => Get.snackbar("Success", "Product added to cart"));
  }

  Future<List<CartItem>> getCartItems() async {
    User? currentUser = _auth.currentUser;
    List<CartItem> cartItems = [];
    CollectionReference cartCollection =
        _firestore.collection("users-cart-items");

    if (currentUser != null) {
      await cartCollection
          .doc(currentUser.email)
          .collection("items")
          .get()
          .then((querySnapshot) {
        for (var doc in querySnapshot.docs) {
          cartItems.add(CartItem.fromMap(doc.data() as Map<String, dynamic>));
        }
      });
    }

    return cartItems;
  }
}
