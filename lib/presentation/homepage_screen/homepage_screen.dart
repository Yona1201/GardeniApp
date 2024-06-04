import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/autumnthreesection_item_widget.dart';
import 'widgets/userprofilesection_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.delivery_dining_outlined,
                color: Colors.pink,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.pink,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              label: 'Home')
        ]),
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
          CustomImageView(
            imagePath: ImageConstant.imgAa,
            height: 64.v,
            width: 65.h,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              top: 39.v,
              bottom: 12.v,
            ),
            onTap: () {
              onTapImgAaone(context);
            },
          )
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
              controller: searchController,
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
              onTapImgFirrsettings(context);
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
        itemCount: 4,
        itemBuilder: (context, index) {
          return AutumnthreesectionItemWidget();
        },
      ),
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

  /// Navigates to the profilepageScreen when the action is triggered.
  onTapImgAaone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilepageScreen);
  }

  /// Navigates to the filterpageContainerScreen when the action is triggered.
  onTapImgFirrsettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filterpageContainerScreen);
  }

  /// Navigates to the trackingpageone Screen when the action is triggered.
  onTapImgImageone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trackingpageoneScreen);
  }
}
