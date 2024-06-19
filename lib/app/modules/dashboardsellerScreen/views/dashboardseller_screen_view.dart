import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gardeniapp/app/modules/getStarted/views/get_started_view.dart';

import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controllers/dashboardseller_screen_controller.dart';

class DashboardsellerScreenView
    extends GetView<DashboardsellerScreenController> {
  DashboardsellerScreenView({Key? key}) : super(key: key);
  final DashboardsellerScreenController dashboardsellerScreenController =
      Get.put(DashboardsellerScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Seller'),
      ),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 0.h,
            vertical: 10.v,
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Row(
                  children: [
                    Container(
                      height: 112.v,
                      width: 107.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup31,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlaceholder01,
                        height: 112.v,
                        width: 107.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 45.h,
                        top: 34.v,
                        bottom: 25.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Services",
                            style: CustomTextStyles
                                .titleLargeRalewayOnErrorContainer,
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Approval",
                            style: CustomTextStyles
                                .titleSmallRalewayOnErrorContainer,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "History",
                  style: CustomTextStyles.titleLargeSemiBold,
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Order : ",
                  style: CustomTextStyles.titleLargeSemiBold,
                ),
              ),
              SizedBox(height: 20.v),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('orders')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError ||
                        !snapshot.hasData ||
                        snapshot.data!.docs.isEmpty) {
                      return Center(child: Text("No orders found"));
                    }
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var orderData = snapshot.data!.docs[index].data()
                            as Map<String, dynamic>;
                        var items = List.from(orderData['items']);
                        var firstItem = items.isNotEmpty
                            ? items[0] as Map<String, dynamic>
                            : null;
                        var currentStatus = orderData['status'] as String;
                        var currentStatusIndex = dashboardsellerScreenController
                            .statusOptions
                            .indexOf(currentStatus);
                        var nextStatusIndex = currentStatusIndex <
                                dashboardsellerScreenController
                                        .statusOptions.length -
                                    1
                            ? currentStatusIndex + 1
                            : currentStatusIndex;

                        var docId = snapshot.data!.docs[index].id;

                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 116.v,
                                        width: 123.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 27.h,
                                          vertical: 20.v,
                                        ),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder20,
                                        ),
                                        child: CustomImageView(
                                          imagePath: firstItem != null
                                              ? firstItem['image']
                                              : ImageConstant.imgRoses2,
                                          height: 76.v,
                                          width: 67.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  firstItem != null
                                                      ? firstItem['name']
                                                      : "No item",
                                                  style: CustomTextStyles
                                                      .titleMediumRed300SemiBold,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Order : ${orderData['orderNumber']}",
                                                  style: CustomTextStyles
                                                      .titleMediumRed300SemiBold,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${DateTime.fromMillisecondsSinceEpoch(orderData['timestamp'].millisecondsSinceEpoch).toString()}",
                                                  style: CustomTextStyles
                                                      .titleMediumRed300SemiBold,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Total: ${orderData['totalPrice']}",
                                                  style: CustomTextStyles
                                                      .titleMediumRed300SemiBold,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                  foregroundColor:
                                                      appTheme.red300,
                                                  side: const BorderSide(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                onPressed: currentStatusIndex <
                                                        dashboardsellerScreenController
                                                                .statusOptions
                                                                .length -
                                                            1
                                                    ? () => dashboardsellerScreenController
                                                        .updateOrderStatus(
                                                            docId,
                                                            dashboardsellerScreenController
                                                                    .statusOptions[
                                                                nextStatusIndex])
                                                    : null,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      "${dashboardsellerScreenController.statusOptions[nextStatusIndex]}"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      onTap: () {
                        Get.offAll(() => GetStartedView());
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => GetStartedView());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 35.h,
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "Log Out",
                          style: CustomTextStyles.titleLargeRed300,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }

  /// Section Widget
}
