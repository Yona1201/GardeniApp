import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/autumnthreesection_item_widget.dart';
import 'widgets/userprofilesection_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageScreen extends StatelessWidget { 
  HomepageScreen ({Key? key})
      : super(
      key: key,
      );

  TextEditingController searchController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
    resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30.v),
            Expanded(
              child: SingleChildScrollView(
              child: SizedBox(
              height: 986.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center, 
                children: [
                  Align(
                    alignment: Alignment.bottomCenter, 
                    child: Container(
                      height: 82.v,
                      width: 451.h,
                      margin: EdgeInsets.only (bottom: 84.v), 
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
                        padding: EdgeInsets.only (left: 16.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildCloseupSection (context),
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
                                SizedBox (height: 8.v),
                                _buildUserProfileSection (context),
                                SizedBox(height: 35.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.h,
                                    right: 57.h,
                                  ),
                                child: _buildTrendsPopularSection(
                                  context,
                                  trendsAndPopularText:
                                    "Trends & Popular now", 
                                  viewAllText: "View all",
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                _buildAutumnThreeSection (context),
                                SizedBox(height: 27.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.h,
                                    right: 54.h,
                                  ),
                                child: Row(
                                  mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Halloween theme",
                                      style: CustomTextStyles
                                      .titleLargeMerriweatherRed300,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only (top: 8.v),
                                      child: Text(
                                        "View all",
                                        style:
                                        CustomTextStyles.labelLargeRed300,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                    SizedBox(height: 11.v),
                                    _buildHalloweenThemeSection (context)
                          ],
                        ),
                    ),
                  )
                ],
              ),
              ),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }

            /// Section Widget
            Widget _buildCloseupSection (BuildContext context) { 
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
          Widget _buildSearchSection (BuildContext context) {
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
                    Widget _buildSalesSliderSection (BuildContext context) {
                      return Row(
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
                                          Container(
                                            width: 165.h,
                                            margin: EdgeInsets.only (right: 25.h),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [ 
                                              TextSpan(
                                                text: "Get ",
                                                style: CustomTextStyles.titleLargePrimary,
                                                ),
                                                TextSpan(
                                                  text: "50% Off for \n New User",
                                                  style: CustomTextStyles.headlineMediumRed300,
                                                          )
                                                        ],
                                                      ),
                                                      textAlign: TextAlign.center,
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
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                          CustomTextStyles.headlineSmallMerriweatherTea1700,
                                      ),
                                    )
                                    ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }
                    
/// Section Widget
Widget _buildUserProfileSection (BuildContext context) {
  return SizedBox(
  height: 105.v,
  child: ListView.separated(
    padding: EdgeInsets.only (left: 13.h), 
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
   Widget _buildAutumnThreeSection (BuildContext context) {
     return SizedBox(
        height: 150.v,
        child: ListView.separated(
          padding: EdgeInsets.only (left: 20.h), 
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
  Widget _buildHalloweenThemeSection (BuildContext context) { 
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: Row(
        children: [
          SizedBox(
            height: 150.v,
            width: 396.h,
            child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame11,
                height: 40.v,
                width: 320.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 23.h,
                  top: 10.v,
                ),
                onTap: () {
                  onTapImgImageone (context);
                },
              ),
              Align(
               alignment: Alignment.center, 
               child: SizedBox(
                width: 396.h,
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
                    height: 150.v,
                    width: 137.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 135.h,
                            margin: EdgeInsets.only (bottom: 41.v),
                            child: Text(
                              "Box \n“trick or treaten”",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelMedium11,
                              ),
                              ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                            margin: EdgeInsets.only(left: 1.h), 
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 5.v,
                            ),
                            decoration:
                            AppDecoration.outlineGray20004.copyWith(
                            borderRadius:
                                BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img41,
                                  height: 92.v,
                                  width: 86.h,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(height: 21.v),
                                Text(
                                  "150 K",
                                style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 4.v)
                              ],
                            ),
                            ),
                          )
                      ],
                    ),
                  ),
                 _buildColumnsixOne(
                    context,
                    userImage: ImageConstant.img6,
                    titleText: "Classic “Pastel”", 
                    counterText: "150 K",
                 )
                  ],
                ),
               ),
              )
            ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only (left: 60.h),
                child: _buildColumnsixOne(
                  context,
                  userImage: ImageConstant.imgBox2,
                  titleText: "Box of love",
                  counterText: "95 K",
                ),
            ),
          )
        ],
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
Widget _buildColumnsixOne( 
  BuildContext context, { 
  required String userImage, 
  required String titleText,
  required String counterText,
}) {
  return Container(
  padding: EdgeInsets.symmetric(
  horizontal: 9.h,
  vertical: 6.v,
  ),
  decoration:AppDecoration.outlineGray20004.copyWith(
    borderRadius: BorderRadiusStyle.roundedBorder20,
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CustomImageView(
        imagePath: userImage,
        height: 95.v,
        width: 92.h,
      ),
      SizedBox(height: 2.v),
      Text(
        titleText,
        style: theme.textTheme.labelLarge!.copyWith(
          color: appTheme.black900,
        ),
      ),
      SizedBox(height: 2.v),
      Align(
        alignment: Alignment.centerLeft, 
        child: Text(
          counterText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.red300,
                ),
              ),
            ),
            SizedBox(height: 3.v)
              ],
            ),
          );
        }
      
  /// Navigates to the profilepageScreen when the action is triggered. 
  onTapImgAaone (BuildContext context) {
    Navigator.pushNamed (context, AppRoutes.profilepageScreen);
  }
  
  /// Navigates to the filterpageContainerScreen when the action is triggered. 
  onTapImgFirrsettings (BuildContext context) {
    Navigator.pushNamed (context, AppRoutes.filterpageContainerScreen);
  }
  
  /// Navigates to the trackingpageone Screen when the action is triggered. 
  onTapImgImageone (BuildContext context) {
   Navigator.pushNamed (context, AppRoutes.trackingpageoneScreen);
  }
}
 