import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/tracking_screen2_controller.dart';

class TrackingScreen2View extends GetView<TrackingScreen2Controller> {
  final String orderId;

  TrackingScreen2View({Key? key, required this.orderId}) : super(key: key);

  final List<Map<String, dynamic>> trackingStages = [
    {
      'title': 'Order is received',
      'description': 'The shop is preparing your order.',
      'status': 'Order is received',
      'icon': Icons.check_circle_outline,
    },
    {
      'title': 'Processing',
      'description': 'The shop is processing your order.',
      'status': 'Processing',
      'icon': Icons.autorenew,
    },
    {
      'title': 'Shipped',
      'description': 'The shop is preparing to ship your order.',
      'status': 'Shipped',
      'icon': Icons.local_shipping,
    },
    {
      'title': 'On the way',
      'description': 'The shop is now delivering your order.',
      'status': 'On the way',
      'icon': Icons.delivery_dining,
    },
    {
      'title': 'Order delivered',
      'description': 'Your order has been delivered.',
      'status': 'Order delivered',
      'icon': Icons.home,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Tracking'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .doc(orderId)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError ||
              !snapshot.hasData ||
              !snapshot.data!.exists) {
            return Center(child: Text("Order not found"));
          }

          var orderData = snapshot.data!.data() as Map<String, dynamic>;
          var currentStatus = orderData['status'] ?? '';

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order id: ${orderData['orderNumber']}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: trackingStages.length,
                    itemBuilder: (context, index) {
                      var stage = trackingStages[index];
                      var isActive = currentStatus == stage['status'];
                      var isCompleted = currentStatus.isNotEmpty &&
                          trackingStages
                              .takeWhile((e) => e['status'] != currentStatus)
                              .contains(stage);

                      return Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    stage['icon'],
                                    color: isActive || isCompleted
                                        ? Colors.red
                                        : Colors.grey,
                                    size: 40,
                                  ),
                                  if (index < trackingStages.length - 1)
                                    Container(
                                      width: 2,
                                      height: 50,
                                      color: isCompleted
                                          ? Colors.red
                                          : Colors.grey,
                                    ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      stage['title'],
                                      style: TextStyle(
                                        color: isActive || isCompleted
                                            ? Colors.red
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      stage['description'],
                                      style: TextStyle(
                                        color: isActive || isCompleted
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                    if (isActive &&
                                        orderData['tracking_time'] != null)
                                      Text(
                                        DateFormat('hh:mm a - MMM dd, yyyy')
                                            .format(
                                          DateTime.fromMillisecondsSinceEpoch(
                                            (orderData['tracking_time']
                                                    as Timestamp)
                                                .millisecondsSinceEpoch,
                                          ),
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
