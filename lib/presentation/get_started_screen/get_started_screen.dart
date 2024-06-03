import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart'; 
import '../../widgets/custom_elevated_button.dart';

class GetStartedScreen extends StatelessWidget { 
  const GetStartedScreen ({Key? key})
    : super(
      key: key,
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
              ImageConstant.imgGetStarted,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only (top: 79.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
              imagePath: ImageConstant.imgCloseUp,
              height: 300.adaptSize,
              width: 300.adaptSize,
              ),
              SizedBox(height: 22.v),
              SizedBox(
                width: 287.h,
                child: Text(
                  "Find the best Flower for you",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium,
              ),
             ),
              SizedBox(height: 88.v),
              CustomElevatedButton(
                width: 287.h,
                text: "Customer",
                buttonStyle: CustomButtonStyles.fillPrimary, 
                buttonTextStyle: theme.textTheme.headlineSmall!, 
                onPressed: () {
                  onTapCustomer(context);
                  },
                ),
                SizedBox(height: 28.v),
                CustomElevatedButton(
                  width: 287.h,
                  text: "Seller",
                  buttonStyle:
                  CustomButtonStyles.fillPrimary,
                  buttonTextStyle: theme.textTheme.headlineSmall!,
                  onPressed: () {
                    onTapSeller(context);
                  },
                  ),
                  SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
      ),
    );
  }
                
   /// Navigates to the loginpageScreen when the action is triggered. 
   onTapCustomer (BuildContext context) {
    Navigator.pushNamed (context, AppRoutes.loginpageScreen);
    }
    
   /// Navigates to the loginSellerScreen when the action is triggered. 
    onTapSeller (BuildContext context) {
   Navigator.pushNamed (context, AppRoutes.loginSellerScreen);
   }
  }
