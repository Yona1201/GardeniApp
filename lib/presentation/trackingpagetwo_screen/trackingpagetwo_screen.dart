import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../filterpage_page/filterpage_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TrackingpagetwoScreen extends StatelessWidget { 
  TrackingpagetwoScreen ({Key? key})
    : super(
    key: key,
    );
    
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      appBar: _buildAppBar (context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric (vertical: 3.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Padding(
            padding: EdgeInsets.only (left: 34.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [ 
                Container(
                  height: 71.v, 
                  width: 70.h,
                  margin: EdgeInsets.only (top: 8.v), 
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup4,
                    ),
                    fit: BoxFit.cover,
                    ),
                  ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlaceholder01,
                      height: 71.v,
                      width: 70.h,
                      alignment: Alignment.center,
                    ),
                ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      bottom: 9.v,
                    ),
                    child: Column (
                      children: [
                      Text(
                       "My Orders",
                    style: CustomTextStyles
                    .titleLargeRalewayOnErrorContainer,
                      ),
                      SizedBox(height: 28.v),
                     Text(
                      "Tracking History",
                      style: CustomTextStyles
                      .titleSmallRalewayOnErrorContainer,
                     )
                      ],
                    ),
                  )
               ],
            ),
            ),
             SizedBox (height: 20.v),
             Container(
              height: 551.v,
              width: 429.h,
              margin: EdgeInsets. only (left: 1.h),
              child: Stack(
                alignment: Alignment.bottomRight, 
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 410.v,
                      width: 53.h,
                      margin: EdgeInsets.only (left: 63.h),
                      child: Stack(
                        alignment: Alignment.center, 
                        children: [ 
                          CustomImageView(
                            imagePath: ImageConstant.imgLine,
                            height: 410.v,
                            width: 1.h,
                            alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 56.v, 
                                    width: 53.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 17.v,
                                    ),
                                    decoration:
                                      AppDecoration.fillRed300.copyWith(
                                    borderRadius:
                                     BorderRadiusStyle.circleBorder28,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgFiRrBox,
                                      height: 22.v,
                                      width: 21.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                               SizedBox (height: 60.v), 
                               Container(
                                height: 56.v,
                                width: 53.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 17.v,
                                ),
                                decoration:
                                  AppDecoration.fillRed300.copyWith(
                                borderRadius:
                                  BorderRadiusStyle.circleBorder28,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFiRrCube,
                                  height: 22.v,
                                  width: 21.h,
                                  alignment: Alignment.center,
                                ),
                               ),
                                SizedBox(height: 60.v),
                                Container(
                                  height: 56.v,
                                  width: 53.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 17.v,
                                ),
                                decoration:
                                  AppDecoration.fillRed300.copyWith(
                                borderRadius:
                                  BorderRadiusStyle.circleBorder28,
                                  ),
                                  child: CustomImageView(
                                  imagePath: ImageConstant.imgFiRrTruckSide, 
                                    height: 22.v,
                                    width: 21.h,
                                    alignment: Alignment.center,
                                  ),
                                )
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                 Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                       left: 134.h,
                      right: 36.h,
                       bottom: 37.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                        Text(
                          "Order is received",
                          style: CustomTextStyles
                          .titleMediumMerriweatherRed300,
                        ),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only (left: 4.h), 
                          child: Text(
                            "The shop is preparing your order.", 
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox (height: 5.v),
                        Padding(
                          padding: EdgeInsets.only (left: 4.h), 
                          child: Text(
                            "10:00AM - July 05, 2023",
                          style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 52.v),
                        Text(
                          "Processing",
                        style: CustomTextStyles
                        .titleMediumMerriweatherRed300,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                        "The shop is processing your order.", 
                        style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "10:00AM July 05, 2023",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 51.v),
                        Text(
                          "Shipped",
                          style: CustomTextStyles
                          .titleMediumMerriweatherRed300,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "The shop is preparing to ship your order.", 
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "10:00AM - July 05, 2023", 
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 53.v),
                        Text(
                          "On the way",
                          style: CustomTextStyles
                        .titleMediumMerriweatherRed300,
                        ),
                        SizedBox (height: 4.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "The shop is now delivering your order.", 
                            style: theme.textTheme.bodySmall,
                          ),
                       ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only (left: 3.h),
                        child: Text(
                          "10:00AM - July 05, 2023",
                      style: theme.textTheme.bodySmall,
                        ),
                      )
                    ],
                   ),
                  ),
                 ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 56.v,
                    width: 53.h,
                    margin: EdgeInsets.only(
                      left: 63.h,
                  top: 84.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.outlineRed3002.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder28,
                ),
child: CustomImageView(
  imagePath: ImageConstant.imgFiRrFileCheck,
  height: 22.v,
  width: 21.h,
  alignment: Alignment.center,
    ),
  ),
),
_buildOrder(context)
    ],
  ),
),
SizedBox(height: 1.v),
Padding(
  padding: EdgeInsets.only (left: 64.h),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        height: 56.v,
        width: 53.h,
        margin: EdgeInsets.only (bottom: 20.v),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillRed300.copyWith( 
          borderRadius: BorderRadiusStyle.circleBorder28,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettings, 
          height: 22.v,
          width: 21.h,
          alignment: Alignment.center,
          ),
      ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 12.v,
          ),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order delivered",
              style:
              CustomTextStyles.titleMediumMerriweatherRed300,
              ),
          SizedBox(height: 1.v),
          Text(
            "Your order has been delivered.", 
            style: theme.textTheme.bodySmall,
            ),
          SizedBox(height: 7.v),
          Text(
          "10:00AM - July 05, 2023", 
          style: theme.textTheme.bodySmall,
          )
            ],
          ),
          )
      ],
  ),
),
SizedBox (height: 5.v)
          ],
        ),
      ),
bottomNavigationBar: Padding(
  padding: EdgeInsets.only(
    left: 25.h,
    right: 30.h,
),
child:_buildBottombar (context),
      ),
    ),
  );
}

/// Section Widget
PreferredSizeWidget _buildAppBar (BuildContext context) {
  return CustomAppBar(
  leadingWidth: double.maxFinite,
  leading: AppbarLeadingImage(
    imagePath: ImageConstant.imgArrowLeftRed300,
    margin: EdgeInsets.fromLTRB (54.h, 18.v, 365.h, 18.v), 
    onTap: () {
       onTapArrowleftone(context);
    },
  ),
  );
}

  /// Section Widget
  Widget _buildOrder (BuildContext context) { 
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: appTheme.red300.withOpacity(0.13),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 36.h,
              right: 32.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end, 
                children: [
                  Text(
                    "Estimated time:",
                    style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    SizedBox(height: 10.v),
                    Padding(
                    padding: EdgeInsets.only (right: 7.h), 
                    child: Text(
                      "18 dec 15:00",
                    style: CustomTextStyles.titleMediumMerriweather,
                    ),
                    )
                ],
              ),
                    Column(
                    children: [
                    Text(
                      "Order number:",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox (height: 10.v),
                    Text(
                      " #2482011",
                      style: CustomTextStyles.titleMediumMerriweather,
                    )
                    ],
                    )
            ],
          ),
          ),
          SizedBox(height: 17.v),
          Divider(
          color: appTheme.red300.withOpacity(0.13),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar (BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }
  
  ///Handling route based on bottom click actions 
  String getCurrentRoute (BottomBarEnum type) { 
    switch (type) {
      case BottomBarEnum. Vector:
        return AppRoutes.filterpagePage; 
      case BottomBarEnum. Vectorred300: 
        return "/";
      case BottomBarEnum. Shoppingcart: 
        return "/";
      case BottomBarEnum. Vectorred30030x29:
        return "/";
      default:
        return "/";
    }
  }
  
  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) { 
    switch (currentRoute) {
    case AppRoutes.filterpagePage: 
      return FilterpagePage();
    default:
      return DefaultWidget();
    }
  }

    /// Navigates back to the previous screen.
   onTapArrowleftone (BuildContext context) {
    Navigator.pop(context);
    }
}