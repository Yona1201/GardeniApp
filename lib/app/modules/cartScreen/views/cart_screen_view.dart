import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/modules/paymentScreen/views/payment_screen_view.dart';

import 'package:get/get.dart';

import '../../../core/model/CartItem.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_switch.dart';
import '../controllers/cart_screen_controller.dart';

class CartScreenView extends GetView<CartScreenController> {
  CartScreenView({Key? key}) : super(key: key);
  final CartScreenController cartScreenController =
      Get.put(CartScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Cart",
            style: CustomTextStyles.titleLargeRegular22,
          ),
        ),
        body: Container(
          // color: Colors.blue,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 30.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.v),
              _buildRowRosestwoOne(context),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 34.h),
                child: Text(
                  "Ads-On",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 34.h,
                    right: 31.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kartu Ucapan",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                      // CustomSwitch(
                      //   margin: EdgeInsets.only(bottom: 4.v),
                      //   value: isSelectedSwitch,
                      //   onChange: (value) {
                      //     isSelectedSwitch = value;
                      //   },
                      // )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 34.h,
                    right: 26.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Obx(
                          () => Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Sub total',
                                    style: CustomTextStyles.bodyLargeBlack90018
                                        .copyWith(
                                      color: appTheme.black900,
                                    ),
                                  ),
                                  Text(
                                    " ${cartScreenController.totalPrice.value}K",
                                    style: CustomTextStyles.bodyLargeGray900
                                        .copyWith(
                                      color: appTheme.gray900,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: CustomTextStyles.bodyLargeBlack90018
                                        .copyWith(
                                      color: appTheme.black900,
                                    ),
                                  ),
                                  Text(
                                    " ${cartScreenController.totalPrice.value}K",
                                    style: CustomTextStyles.bodyLargeGray900
                                        .copyWith(
                                      color: appTheme.gray900,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildColumnOrderNow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowRosestwoOne(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('users-cart-items')
          .doc(FirebaseAuth.instance.currentUser!.email)
          .collection("items")
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text("Something is wrong"),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text("No items in the cart"));
        }
        final docs = snapshot.data!.docs;
        int totalPrice = 0;

        docs.forEach((doc) {
          final price = int.tryParse(doc['price']) ?? 0;
          totalPrice += price;
        });
        final total = totalPrice ?? 0;
        cartScreenController
            .updateTotalPrice(totalPrice); // Update total price here

        print(totalPrice);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 400.v,
                child: ListView.builder(
                    itemCount:
                        snapshot.data == null ? 0 : snapshot.data!.docs.length,
                    itemBuilder: (_, index) {
                      DocumentSnapshot _documentSnapshot =
                          snapshot.data!.docs[index];
                      final rupiah = int.parse(_documentSnapshot['price']) ?? 0;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.only(bottom: 11.v),
                            color: theme.colorScheme.primary.withOpacity(1),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: appTheme.gray300,
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Container(
                              height: 118.v,
                              width: 123.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 14.v,
                              ),
                              decoration: AppDecoration.outlineGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: _documentSnapshot[
                                        'image'], // Use item's image URL
                                    height: 76.v,
                                    width: 67.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFavorite,
                                    height: 18.v,
                                    width: 19.h,
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 11.v),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 238.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _documentSnapshot['name'],
                                            style: CustomTextStyles
                                                .titleLargeMerriweather,
                                          ),
                                          SizedBox(height: 10.v),
                                          Text(
                                            "Price ${_documentSnapshot['price']}K",
                                            style:
                                                CustomTextStyles.labelLarge13,
                                          )
                                        ],
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFiRrTrash,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(bottom: 35.v),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                      height: 26.adaptSize,
                                      width: 26.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgFiRrMinus,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 14.h,
                                        top: 4.v,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        "1",
                                        style: CustomTextStyles
                                            .headlineMediumMerriweather,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 14.h,
                                        top: 7.v,
                                        bottom: 7.v,
                                      ),
                                      child: CustomIconButton(
                                        height: 26.adaptSize,
                                        width: 26.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnOrderNow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 107.h,
        right: 107.h,
        bottom: 22.v,
      ),
      decoration: AppDecoration.fillGray20001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL20,
      ),
      child: CustomElevatedButton(
        height: 50.v,
        text: "Order Now",
        buttonStyle: CustomButtonStyles.fillRedTL10,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          if (cartScreenController.totalPrice.value > 0) {
            Get.to(() => PaymentScreenView()); // Navigate to payment screen
          } else {
            Get.snackbar('Cart Empty', 'Please add some items to your cart');
          }
        },
      ),
    );
  }

  /// Common widget Widget
}
