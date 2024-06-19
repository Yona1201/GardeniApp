import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class DasboardSellerScreen extends StatelessWidget {
  const DasboardSellerScreen({Key? key})
    : super(
      key: key,
    );
      
  @override
    Widget build (BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 102.v,
            ),
            child: Column (
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, 
              mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox (height: 10.v),
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
                  padding: EdgeInsets. only (left: 22.h), 
                  child: Text(
                    "History",
                    style: CustomTextStyles.titleLargeSemiBold,
                   ),
                 ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.only (left: 24.h),
                  child: Text(
                    "Order : ",
                    style: CustomTextStyles.titleLargeSemiBold,
                ),
              ),
                SizedBox(height: 20.v),
                _buildRowrosestwoone (context),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only (left: 25.h),
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
                            left: 46.h,
                            top: 9.v,
                            bottom: 5.v,
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
        ),
      );
    }
      
  /// Section Widget
  Widget _buildRowrosestwoone (BuildContext context) {
    return Padding(
    padding: EdgeInsets.only (right: 13.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 118.v,
          width: 123.h,
          margin: EdgeInsets.only (bottom: 14.v),
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
            padding: EdgeInsets.only (top: 11.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "101 red roses",
                style: CustomTextStyles.titleLargeMerriweather,
              ),
              SizedBox(height: 10.v),
              Text(
                "Order Number: #2482011 ",
                style: CustomTextStyles.titleMediumRed300SemiBold,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 223.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                      Text(
                       "15-07-2023",
                      style: CustomTextStyles.titleMediumRed300SemiBold,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                      "Total: 934 \$",
                      style: theme.textTheme.bodyLarge,
                      )
                      ],
                      ),
                      CustomElevatedButton(
                      height: 43.v,
                      width: 101.h,
                      text: "Approve",
                      margin: EdgeInsets.only( 
                        top: 11.v,
                        bottom: 2.v,
                      ),
                      buttonStyle: CustomButtonStyles.none, 
                      buttonTextStyle:
                         CustomTextStyles.titleSmallInterPrimary,
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

   /// Navigates to the getStarted Screen when the action is triggered. 
   onTapImgContrastone (BuildContext context) {
    Navigator.pushNamed (context, AppRoutes.getStartedScreen);
   }

   /// Navigates to the getStartedScreen when the action is triggered. 
   onTapTxtLogout (BuildContext context) {
    Navigator.pushNamed (context, AppRoutes.getStartedScreen);   
   }
}
