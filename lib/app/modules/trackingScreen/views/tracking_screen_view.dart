import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gardeniapp/app/modules/dashboardScreen/controllers/dashboard_screen_controller.dart';
import 'package:gardeniapp/app/modules/trackingScreen2/views/tracking_screen2_view.dart';
import 'package:get/get.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../../profileScreen/controllers/profile_screen_controller.dart';

class TrackingScreenView extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DashboardScreenController pController =
      Get.put(DashboardScreenController());
  TrackingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = _auth.currentUser;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My Orders")),
        ),
        body: user != null
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 71.v,
                          width: 70.h,
                          margin: EdgeInsets.only(top: 10.v),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup4,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            height: 71.v,
                            width: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(97.h),
                              ),
                              color: Colors.blue,
                              image: DecorationImage(
                                image: NetworkImage(
                                  "${pController.gambar}", // Ganti dengan URL gambar Anda
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.h, bottom: 9.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "To Receive",
                                style: CustomTextStyles
                                    .titleLargeRalewayOnErrorContainer,
                              ),
                              SizedBox(height: 30.v),
                              Text(
                                "My Orders",
                                style: CustomTextStyles
                                    .titleSmallRalewayOnErrorContainer,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('orders')
                          .where('userId', isEqualTo: user.uid)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
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

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20,
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
                                                      "Order id: ${orderData['orderNumber']}",
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
                                                      "Total: ${orderData['totalPrice']}K",
                                                      style: CustomTextStyles
                                                          .titleMediumRed300SemiBold,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5.0,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      foregroundColor:
                                                          appTheme.red300,
                                                      side: const BorderSide(
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Get.to(() =>
                                                          TrackingScreen2View(
                                                              orderId: snapshot
                                                                  .data!
                                                                  .docs[index]
                                                                  .id));
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child:
                                                          Text("Track Order"),
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
                ],
              )
            : Center(child: Text("Please log in to view orders")),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftRed300,
        margin: EdgeInsets.fromLTRB(54.h, 18.v, 365.h, 18.v),
        onTap: () {},
      ),
    );
  }
}
