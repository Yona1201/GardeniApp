import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class OrderFinishScreen extends StatelessWidget { 
  const OrderFinishScreen({Key? key})
    : super(
      
    );
      
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold( 
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: SizeUtils.width,
        height: SizeUtils.height,
        decoration: BoxDecoration (
          color: theme.colorScheme.primary.withOpacity(1),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.25),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
              0,
              4,
              ),
            )
          ],
      image: DecorationImage(
        image: AssetImage(
           ImageConstant.imgOrderFinish,
        ),
        fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: 27.h,
          top: 127.v,
          right: 27.h,
        ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5.v),
            _buildOrderFinishStack (context)
            ], 
          ),
        ),
      ),
    ),
    );
  }

  /// Section Widget
  Widget _buildOrderFinishStack (BuildContext context) {
    return SizedBox(
      height: 339.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 61.h,
                right: 59.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                   "Thank you!",
                  style: CustomTextStyles.headlineMedium26,
                  ),
                  SizedBox (height: 27.v),
                  SizedBox(
                    width: 254.h,
                    child: Text(
                    "You have placed your order Successfully",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineMedium26,
                    ),
                  )
                ],
              ),
            ),
          ),
                    CustomImageView(
                    imagePath: ImageConstant.imgHttpsLottief,
                    height: 326.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                    ),
                    CustomElevatedButton(
                      height: 53.v,
                      width: 216.h,
                      text: "View More Options",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleMediumRed300, 
                      onPressed: () {
                      onTapViewmore (context);
                      },
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              );
            }

/// Navigates to the homepageScreen when the action is triggered. 
onTapViewmore (BuildContext context) {
Navigator.pushNamed (context, AppRoutes.homepageScreen);
  }
}