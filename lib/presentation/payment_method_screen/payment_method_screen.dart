import 'package:flutter/material.dart'; 
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PaymentMethodScreen extends StatelessWidget { 
  PaymentMethodScreen ({Key? key})
    : super(
    key: key,
    );
    
  TextEditingController cardNumberValueController = TextEditingController();

  TextEditingController expirationValueController = TextEditingController();
  
  TextEditingController cvvValueController = TextEditingController();
 
  TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 81.v),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentMethodRow(context), 
            SizedBox(height: 67.v),
            Padding(
              padding: EdgeInsets.only (left: 62.h),
              child: Row(
                children: [
                  CustomImageView(  
                    imagePath: ImageConstant.imgClose,
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 5.v,
                      ),
                    child: Text(
                      "Pay with Debit/Credit Card",
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              ),
            ),    
              SizedBox(height: 34.v), 
              Padding(
                 padding: EdgeInsets.only(left: 72.h), 
                 child: Text(
                      "Card Number",
                      style: CustomTextStyles.titleMediumGray600,
                 ),
              ),
               _buildCardNumberValue(context),
              SizedBox(height: 18.v),
              Align(      
                 alignment: Alignment.center, 
                 child: Padding(
                    padding: EdgeInsets.symmetric (horizontal: 71.h), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                        Padding(
                          padding: EdgeInsets.only (top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                            Padding(
                              padding: EdgeInsets.only (left: 1.h),
                              child: Text(
                              "Exp",
                              style: CustomTextStyles.titleMediumGray600,
                              ), 
                            ),
                            SizedBox(height: 3.v),
                            _buildExpirationValue(context)
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only (left: 1.h),
                              child: Text(
                                "CVV",
                                style: CustomTextStyles.titleMediumGray600,
                            ),
                          ),
                            SizedBox(height: 5.v),
                            _buildCvvValue(context)
                            ],
                           )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only (left: 74.h),
                        child: Text(
                         "Name on the Card",
                            style: CustomTextStyles.titleMediumGray600,      
                         ),
                        ),
                        SizedBox(height: 5.v), 
                        _buildPassword (context)
                          ],
                        ),
                      ),
                        bottomNavigationBar: _buildColumnpaynow (context),      
       ),
     );
   } 
   
   /// Section Widget
  Widget _buildPaymentMethodRow(BuildContext context) {
     return SizedBox(
      width: double.maxFinite,
      child: Row(
         crossAxisAlignment: CrossAxisAlignment.start, 
         children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftRed300, 
              height: 20.v,
              width: 11.h,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 10.v,
                 ), 
                  onTap: () {
                    onTapImgArrowleftone (context);
                      },
                    ),
                   Spacer (
                    flex: 50,
                   ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftRed300, 
                    height: 20.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 10.v,
                    ),
                    onTap: () {
                      onTapImgArrowleftthree (context);
                      },
                    ),
                    Spacer (
                      flex: 15,
                    ),
                    Text(
                      "Payment Method",
                    style: theme.textTheme.headlineMedium,
                    ),
                    Spacer (
                    flex: 33,
                    )
                  ],
                ),
              );
            }

  /// Section Widget
  Widget _buildCardNumberValue(BuildContext context) {
    return CustomTextFormField(
      width: 285.h,
      controller: cardNumberValueController,
      hintText: "xxxx xxxx xxxx xxxx",
      hintStyle: CustomTextStyles.titleMediumBluegray10001,
      alignment: Alignment.center,
      borderDecoration: TextFormFieldStyleHelper.underlineBlueGray,
      filled: false,
      );
    }

  /// Section Widget
  Widget _buildExpirationValue (BuildContext context) {
    return CustomTextFormField(
      width: 72.h,
      controller: expirationValueController,
      hintText: "MM/YY",
      borderDecoration: TextFormFieldStyleHelper.underlineBlueGray,
      filled: false,
      );
    }

  /// Section Widget
  Widget _buildCvvValue (BuildContext context) {
    return CustomTextFormField(
      width: 72.h,
      controller: cvvValueController,
      hintText: "xxx",
      contentPadding: EdgeInsets.symmetric (horizontal: 6.h),
      borderDecoration: TextFormFieldStyleHelper.underlineBlueGray,
      filled: false,
      );
    }
  
  /// Section Widget
  Widget _buildPassword (BuildContext context) {
    return CustomTextFormField(
      width: 285.h,
      controller: passwordController,
      hintText: "xxxxxxxxxxx",
      hintStyle: CustomTextStyles.titleMediumBluegray10001,
      textInputAction: TextInputAction.done,
      alignment: Alignment.center,
      borderDecoration: TextFormFieldStyleHelper.underlineBlueGray,
      filled: false,
      );
    }

  /// Section Widget
  Widget _buildPayNowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 53.v,
      text: "Pay Now",
      buttonStyle: CustomButtonStyles.fillRedTL10,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
      onPressed: () {
        onTapPayNowButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildColumnpaynow (BuildContext context) {
    return Container(
    margin: EdgeInsets.only(
    left: 174.h,
    right: 40.h,
    bottom: 15.v,
    ),
    decoration: AppDecoration. fillGray20001.copyWith( 
      borderRadius: BorderRadiusStyle.customBorderBL20,
    ),
    child: _buildPayNowButton(context),
    );
    }

/// Navigates back to the previous screen. 
onTapImgArrowleftone (BuildContext context) { 
  Navigator.pop(context);
}

/// Navigates back to the previous screen. 
onTapImgArrowleftthree (BuildContext context) { 
  Navigator.pop(context);
}

/// Navigates to the orderFinishScreen when the action is triggered. 
onTapPayNowButton (BuildContext context) {
  Navigator.pushNamed (context, AppRoutes.orderFinishScreen);
}
}
   

                                                                                          