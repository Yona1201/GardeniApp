import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../filterpage_page/filterpage_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TrackingpageoneScreen extends StatelessWidget { 
  TrackingpageoneScreen ({Key? key})
    : super(
    key: key,
    );
    
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  
  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar (context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric (horizontal: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Padding(
              padding: EdgeInsets.only (left: 16.h), 
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 71.v,
                    width: 70.h,
                    margin: EdgeInsets.only (top: 10.v),
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
                  SizedBox(height: 20.v),
                  _buildOrderStack (context),
                  SizedBox (height: 14.v), 
                  CustomOutlinedButton( 
                    width: 107.h,
                    text: "Track Order",
                    margin: EdgeInsets.only (right: 5.h),
                    buttonStyle: CustomButtonStyles.outlineRedTL20, 
                    buttonTextStyle: CustomTextStyles.labelLargePrimary, 
                    onPressed: () {
                       onTapTrackorder(context);
                          },
                    alignment: Alignment.centerRight,
                  ),
                SizedBox(height: 5.v)
            ],
          ),
        ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(
                left: 25.h,
                right: 30.h,
            ),
                child: _buildBottomBar(context),
            ),
           ),
          );
        }
  
          /// Section Widget
           PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  Widget _buildOrderStack (BuildContext context) {
    return SizedBox(
      height: 132.v, 
      width: 389.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 48.v,
                right: 36.h,
              ),
              child: Text(
                "Order Number: #2482011",
                style: CustomTextStyles.titleMediumRed300SemiBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: Text(
              "Total: 934 \$",
              style: theme.textTheme.bodyLarge,
          ),
          ),
         CustomOutlinedButton(
          width: 107.h ,
          text: "Processing",
          alignment: Alignment.bottomRight,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 118.v,
                  width: 123.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 27.h,
                    vertical: 20.v,
                ),
                decoration: AppDecoration.outlineGray300.copyWith( 
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgRoses2,
                  height: 76.v,
                  width: 67.h,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                  top: 11.v,
                  bottom: 22.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "101 red roses ",
                    style: CustomTextStyles.titleLargeMerriweather,
                    ),
                    SizedBox(height: 37.v),
                    Text(
                    "15-07-2023",
                    style: CustomTextStyles.titleMediumRed300SemiBold,
                    )
                  ],
                ),
              )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
     Widget _buildBottomBar (BuildContext context) {
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
      case BottomBarEnum.Shoppingcart: 
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

  /// Navigates to the trackingpagetwoScreen when the action is triggered. 
  onTapTrackorder (BuildContext context) {
    Navigator.pushNamed (context, AppRoutes.trackingpagetwoScreen);
  }
}