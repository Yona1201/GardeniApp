import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart'; 
import '../../widgets/custom_bottom_bar.dart';
import '../filterpage_page/filterpage_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfilepageScreen extends StatelessWidget { 
  ProfilepageScreen({Key? key})
      : super(
        key: key
      );
      
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              _buildCircleImageColumn(context), 
              SizedBox(height: 51.v),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgName, 
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 7.v,
                      ),
                    ),
                    Padding(
                     padding: EdgeInsets. only (left: 33.h),
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [ 
                          Text(
                            "Name",
                             style: CustomTextStyles.titleLargeSemiBold,
                      ),
                     SizedBox(height: 2.v),
                      Text(
                         "Mark Lee",
                      style: CustomTextStyles.titleLargeRegular,
                      )
                    ],
                  ),
                )
                  ],
                ),
              ),
              SizedBox(height: 25.v), 
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgDepartment,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 12.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Text(
                             "Address",
                            style: CustomTextStyles.titleLargeSemiBold,
                      ),
                      SizedBox (height: 6.v),
                      Text(
                      "NCT Dorm",
                      style: CustomTextStyles.titleLargeRegular,
                      )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox (height: 28.v), 
              Padding(
                padding: EdgeInsets. only (left: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPhone,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 12.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "Phone no.",
                              style: CustomTextStyles.titleLargeSemiBold,
                            ),
                          ),
                          SizedBox (height: 3.v),
                          Text(
                             "+62 8234578423",
                            style: CustomTextStyles.titleLargeRegular,
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
          SizedBox(height: 21.v), 
          Padding(
            padding: EdgeInsets.only(
              left: 44.h,
              right: 82.h,
            ),
            child: Row(
              children: [
              CustomImageView(
                imagePath: ImageConstant.imgEmail,
                height: 40.adaptSize,
                width: 40.adaptSize,
                margin: EdgeInsets.only(
                  top: 6.v,
                  bottom: 7.v,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only (left: 33.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "E-Mail",
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "watermelon@gmail.com",
                      style: CustomTextStyles.titleLarge_1,
                    )
                  ],
                  ),
                ),
              )
              ],
            ),
          ),
       SizedBox(height: 29.v), 
       Padding(
        padding: EdgeInsets.only(left: 44.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgContrastone(context);
              },
            ),
            GestureDetector( 
              onTap: () {
                onTapTxtLogout(context);
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
     ),
   ),
          bottomNavigationBar: Padding( 
            padding: EdgeInsets.only( 
              left: 25.h, 
              right: 30.h,
            ),
          child: _buildBottomBar (context),
          ),
        ),
      );
    }

      /// Section Widget
        PreferredSizeWidget _buildAppBar (BuildContext context) {
          return CustomAppBar(
            leadingWidth: 65.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeftRed300,
              margin: EdgeInsets.only(
                left: 54.h,
                top: 16.v,
                bottom: 19.v,
              ),
              onTap: () {
                onTapArrowleftone(context);
              },
            ),
             title: AppbarTitle(
              text: "Profile",
              margin: EdgeInsets.only (left: 51.h),                                      
              ),
          );
        }
              
      /// Section Widget
      Widget _buildCircleImageColumn (BuildContext context) { 
        return Container(
          padding: EdgeInsets.symmetric (horizontal: 116.h), 
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                 ImageConstant.imgGroup3,
            ),
            fit: BoxFit.cover,
            ),
           ),
          child: CustomImageView(
            imagePath: ImageConstant.imgAa195x196,
            height: 195.v,
            width: 196.h,
            radius: BorderRadius.circular(
             97.h,
            ),
          ),
        );
      }

      /// Section Widget
        Widget _buildBottomBar(BuildContext context) {
          return CustomBottomBar(
            onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
              },
            );
          }

  ///Handling route based on bottom click actions 
  String getCurrentRoute(BottomBarEnum type) { 
    switch (type) {
      case BottomBarEnum.Vector:
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
      
   /// Navigates back to the previous screen. o
   onTapArrowleftone (BuildContext context) {
     Navigator.pop(context);
      }
      
  /// Navigates to the getStartedScreen when the action is triggered. 
  onTapImgContrastone (BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }

  /// Navigates to the getStartedScreen when the action is triggered. 
  onTapTxtLogout (BuildContext context) {Navigator.pushNamed (context, AppRoutes.getStartedScreen);
  
  }
}
                                                    