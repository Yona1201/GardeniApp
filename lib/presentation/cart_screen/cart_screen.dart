import 'package:flutter/material.dart'; 
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CartScreen extends StatelessWidget { 
  CartScreen({Key? key})
  : super(
    key: key,
  );
  
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 30.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52.v),
              Padding(
                padding: EdgeInsets.only(left: 34.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftRed300, 
                    height: 20.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 5.v, 
                    ),
                     onTap: () {
                      onTapImgArrowleftone (context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 38.h), 
                    child: Text(
                      "Cart",
                      style: CustomTextStyles.titleLargeRegular22,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 44.v),
            _buildRowRosestwoOne(context),
            Spacer (), 
            Padding(
             padding: EdgeInsets.only(left: 34.h),
             child: Text(
                "Ads-On",    
                style: theme.textTheme.titleLarge,
                ),
              ),    
               SizedBox(height: 11.v),
               Align(
                 alignment: Alignment.center, 
                 child: Padding(
                    padding: EdgeInsets.only(       
                    left: 34.h,
                    right: 31.h,
                    ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                        Text(
                          "Kartu Ucapan",
                          style: CustomTextStyles.bodyLargeBlack900,
                        ),
                        CustomSwitch(
                          margin: EdgeInsets.only (bottom: 4.v),
                          value: isSelectedSwitch,
                          onChange: (value) {
                            isSelectedSwitch = value;
                          },
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 43.v),
                Align(
                  alignment: Alignment.center, 
                  child: Padding(
                    padding: EdgeInsets.only(
                    left: 34.h,
                    right: 26.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        Expanded(
                        child: Column(
                          children: [
                            _buildRowTotal(
                              context,
                              totalText: "Sub Total",
                              zeroOneText: "0",
                            ),
                            SizedBox(height: 20.v),
                            _buildRowTotal(
                              context,
                              totalText: "TOTAL",
                              zeroOneText: "0",
                            )
                          ],
                        ),
                       ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 40.v,
                          bottom: 2.v,
                          ),
                          child: Text(
                            "K",
                            style: CustomTextStyles.bodyLargeBlack900_1,  
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
        bottomNavigationBar: _buildColumnOrderNow(context),
      ),
    );
  }

   /// Section Widget
   Widget _buildRowRosestwoOne (BuildContext context) { 
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only (bottom: 11.v),
        color: theme.colorScheme.primary.withOpacity(1),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray300,
          width: 1.h,
        ),
         borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Container(
          height: 118.v,
          width: 123.h,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 14.v,
        ),
        decoration: AppDecoration.outlineGray300.copyWith( 
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.topLeft, 
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRoses2,
              height: 76.v,
              width: 67.h,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFavorite,
              height: 18.v,
              width: 19.h,
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    ),
        Padding(
          padding: EdgeInsets.only (top: 11.v),
            child: Column(
              children: [
                SizedBox(
                width: 238.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [ 
                        Text(
                        "101 red roses",                        
                      style: CustomTextStyles.titleLargeMerriweather,
                        ),
                      SizedBox(height: 13.v),
                      Text(
                        "Available in stock",
                        style: CustomTextStyles.bodySmallInterRed300,
                      )
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFiRrTrash,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only (bottom: 35.v),
                    )
                  ],
                ),
                ),
                SizedBox(height: 22.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 40.v,
                      width: 123.h,
                      text: "Add to cart",
                      rightIcon: Container(
                        margin: EdgeInsets.only (left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCart,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          ),
                        ),    
                     buttonStyle: CustomButtonStyles.fillRed,
                     buttonTextStyle: CustomTextStyles.labelLargePrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        top: 7.v,
                        bottom: 7.v,
                      ),
                      child: CustomIconButton(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFiRrMinus,
                      ),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 4.v,
                      bottom: 1.v,
                      ),
                      child: Text(
                      "1",
                      style: CustomTextStyles.headlineMediumMerriweather,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 7.v,
                        bottom: 7.v,                                                     
                      ),  
                      child: CustomIconButton(
                        height: 26.adaptSize, 
                        width: 26.adaptSize,
                        padding: EdgeInsets.all(8.h), 
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus, 
                      ),
                     ),
                    )
                  ],
                )
              ],
            ),
        )
      ],
    );
   }

  /// Section Widget
  Widget _buildColumnOrderNow (BuildContext context) { 
    return Container(
      margin: EdgeInsets.only(
        left: 107.h,
        right: 107.h,
        bottom: 22.v,
  ),
  decoration: AppDecoration. fillGray20001.copyWith( 
    borderRadius: BorderRadiusStyle.customBorderBL20,
  ),
  child: CustomElevatedButton(
    height: 53.v,
    text: "Order Now",
    buttonStyle: CustomButtonStyles.fillRedTL10,
    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
    onPressed: () {
      onTapOrdernow(context);
    },
  ),
  );
  }

  /// Common widget Widget 
  _buildRowTotal( 
    BuildContext context, {
    required String totalText,
    required String zeroOneText,
  }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
      totalText,
      style: CustomTextStyles.bodyLargeBlack90018.copyWith( 
        color: appTheme.black900,
      ),
    ),
      Text(
      zeroOneText,
      style: CustomTextStyles.bodyLargeGray900.copyWith( 
        color: appTheme.gray900,
      ),
      )
    ],
  );
  }

/// Navigates back to the previous screen. 
onTapImgArrowleftone (BuildContext context) { 
  Navigator.pop(context);
}

/// Navigates to the paymentMethodScreen when the action is triggered. 
onTapOrdernow(BuildContext context) {
Navigator.pushNamed (context, AppRoutes.paymentMethodScreen);                      
}
}
