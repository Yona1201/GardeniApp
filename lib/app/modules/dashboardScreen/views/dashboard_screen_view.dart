import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/modules/dashboardScreen/views/autumnthreesection_item_widget.dart';
import 'package:gardeniapp/app/modules/dashboardScreen/views/userprofilesection_item_widget.dart';
import 'package:gardeniapp/app/modules/profileScreen/views/profile_screen_view.dart';

import 'package:get/get.dart';

import '../../../core/model/Product.dart';
import '../../../core/network/service.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../../productScreen/views/product_screen_view.dart';
import '../../profileScreen/controllers/profile_screen_controller.dart';
import '../controllers/dashboard_screen_controller.dart';

class DashboardScreenView extends GetView<DashboardScreenController> {
  DashboardScreenView({Key? key}) : super(key: key);
  final DashboardScreenController pcontroller =
      Get.put(DashboardScreenController());
  final Service productService = Service(); // Create an instance

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: ListView(
            children: [
              SizedBox(height: 30.v),
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 82.v,
                      width: 451.h,
                      margin: EdgeInsets.only(bottom: 84.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray20003,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20.h),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildCloseupSection(context),
                          SizedBox(height: 9.v),
                          _buildSearchSection(context),
                          SizedBox(height: 38.v),
                          _buildSalesSliderSection(context),
                          SizedBox(height: 28.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 13.h,
                              right: 57.h,
                            ),
                            child: _buildTrendsPopularSection(
                              context,
                              trendsAndPopularText: "Categories",
                              viewAllText: "View all",
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildUserProfileSection(context),
                          SizedBox(height: 35.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 13.h,
                              right: 57.h,
                            ),
                            child: _buildTrendsPopularSection(
                              context,
                              trendsAndPopularText: "Trends & Popular now",
                              viewAllText: "View all",
                            ),
                          ),
                          SizedBox(height: 17.v),
                          _buildAutumnThreeSection(context),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18.h,
                              right: 54.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Halloween theme",
                                  style: CustomTextStyles
                                      .titleLargeMerriweatherRed300,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.v),
                                  child: Text(
                                    "View all",
                                    style: CustomTextStyles.labelLargeRed300,
                                  ),
                                )
                              ],
                            ),
                          ),
                          _buildHalloweenThemeSection(context)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCloseupSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 38.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCloseUp,
                height: 79.v,
                width: 83.h,
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Hi Mark,",
                  style: theme.textTheme.titleLarge,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => ProfileScreenView());
            },
            child: Container(
              height: 64.v,
              width: 65.h,
              margin: EdgeInsets.only(
                top: 39.v,
                bottom: 12.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(97.h),
                ),
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
  "https://media.suara.com/pictures/653x366/2023/08/03/11205-potret-mark-twitteratnctsmtown.jpg",
),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 32.h,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "Find your best flower",
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFiRrSettingsSliders,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 12.v,
              bottom: 8.v,
            ),
            onTap: () {
              // onTapImgFirrsettings(context);
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSalesSliderSection(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              height: 166.v,
              width: 400.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4,
                    height: 166.v,
                    width: 400.h,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 182.h,
                        right: 27.h,
                        bottom: 16.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 190.h,
                            child: Text(
                              "Special \nOffer this weekend",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleLargePrimarySemiBold,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Expanded(
                            child: Container(
                              width: 165.h,
                              margin: EdgeInsets.only(right: 25.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Get ",
                                      style: CustomTextStyles.titleLargePrimary,
                                    ),
                                    TextSpan(
                                      text: "50% Off for \n New User",
                                      style:
                                          CustomTextStyles.headlineMediumRed300,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 166.v,
              width: 400.h,
              margin: EdgeInsets.only(left: 34.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFlowers2,
                    height: 166.v,
                    width: 400.h,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 293.h,
                        right: 15.h,
                        bottom: 21.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sale",
                            style: theme.textTheme.headlineLarge,
                          ),
                          SizedBox(
                            width: 89.h,
                            child: Text(
                              "30% off",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .headlineSmallMerriweatherTea1700,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return SizedBox(
      height: 130.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 13.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return UserprofilesectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAutumnThreeSection(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future:
          productService.getProducts(), // Use the instance to call the method
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }
        if (snapshot.hasData) {
          return SizedBox(
            height: 160.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Product product = snapshot.data![index];
                final gambar = product.imageUrl;
                final deskripsi = product.description;
                final title = product.name;
                final price = product.price;
                return GestureDetector(
                  onTap: () {
                    Get.to(() => ProductScreenView(), arguments: {
                      'title': title,
                      'deskripsi': deskripsi,
                      'price': price,
                      'image': gambar
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    width: 136.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: product.imageUrl,
                          height: 92.adaptSize,
                          width: 92.adaptSize,
                        ),
                        Text(
                          product.name,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 6.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${product.price} K",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 3.v)
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
        return Center(child: Text("No products found"));
      },
    );
  }

  /// Section Widget
  Widget _buildHalloweenThemeSection(BuildContext context) {
    return SizedBox(
      width: 400.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              // alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 370.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildColumnsixOne(
                            context,
                            userImage: ImageConstant.img21,
                            titleText: "Bouquet “Monster”",
                            counterText: "200 K",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          _buildColumnsixOne(
                            context,
                            userImage: ImageConstant.img41,
                            titleText: "Box \n“trick or treaten”",
                            counterText: "150 K",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          _buildColumnsixOne(
                            context,
                            userImage: ImageConstant.img41,
                            titleText: "Box \n“trick or treaten”",
                            counterText: "150 K",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          _buildColumnsixOne(
                            context,
                            userImage: ImageConstant.img41,
                            titleText: "Box \n“trick or treaten”",
                            counterText: "150 K",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTrendsPopularSection(
    BuildContext context, {
    required String trendsAndPopularText,
    required String viewAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          trendsAndPopularText,
          style: CustomTextStyles.titleLargeMerriweatherRed300Bold.copyWith(
            color: appTheme.red300,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
          child: Text(
            viewAllText,
            style: CustomTextStyles.labelLargeRed300.copyWith(
              color: appTheme.red300,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildColumnsixOne(BuildContext context,
      {String? userImage, String? titleText, String? counterText}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 100.v,
          width: 100.h,
        ),
        SizedBox(height: 10.v),
        Text(
          titleText!,
          style: CustomTextStyles.labelMedium11,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5.v),
        Text(
          counterText!,
          style: CustomTextStyles.labelMedium11,
        ),
      ],
    );
  }
}
