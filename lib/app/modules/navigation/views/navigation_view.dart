import 'package:flutter/material.dart';
import 'package:gardeniapp/app/modules/cartScreen/views/cart_screen_view.dart';
import 'package:gardeniapp/app/modules/dashboardScreen/views/dashboard_screen_view.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:gardeniapp/app/modules/profileScreen/views/profile_screen_view.dart';
import 'package:gardeniapp/app/modules/trackingScreen/views/tracking_screen_view.dart';
import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  NavigationView({Key? key}) : super(key: key);
  final NavigationController nav = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (_) {
        return Scaffold(
          body: Center(
            child: IndexedStack(
              index: nav.selectedIndex.value,
              children: [
                DashboardScreenView(),
                TrackingScreenView(),
                CartScreenView(),
                ProfileScreenView(),
              ],
            ),
          ),
          bottomNavigationBar: FlashyTabBar(
            animationCurve: Curves.linear,
            selectedIndex: controller.selectedIndex.value,
            iconSize: 30,
            showElevation: false,
            onItemSelected: (index) => nav.changeTab(index),
            items: [
              FlashyTabBarItem(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                icon: Icon(Icons.home_filled),
                title: Text('Home'),
              ),
              FlashyTabBarItem(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                icon: Icon(Icons.delivery_dining),
                title: Text('Delivery'),
              ),
              FlashyTabBarItem(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart'),
              ),
              FlashyTabBarItem(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                icon: Icon(Icons.person_2_sharp),
                title: Text('Profile'),
              ),
            ],
          ),
        );
      },
    );
  }
}
