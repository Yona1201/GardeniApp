import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget { 
  const AppNavigationScreen({Key? key})
    : super(
      key: key,
    );
    
  @override
  Widget build (BuildContext context) {
    return SafeArea( 
      child: Scaffold( 
        body: SizedBox( 
          width: 375.h,
          child: Column(
            children: [
            _buildAppNavigation(context),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: AppDecoration. fillPrimary,
                  child: Column(
                    children: [
                      _buildScreenTitle(
                        context,
                        screenTitle: "Get Started",
                        onTapScreenTitle: () => onTapScreenTitle(
                          context, AppRoutes.getStartedScreen),
                          ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "LoginPage",
                        onTapScreenTitle: () => onTapScreenTitle( 
                            context, AppRoutes.loginpageScreen),
                          ),
                       _buildScreenTitle(
                          context,
                          screenTitle: "SignUpPage",
                          onTapScreenTitle: () => onTapScreenTitle( 
                            context, AppRoutes.signuppageScreen),
                          ),
                      _buildScreenTitle(
                          context,
                          screenTitle: "HomePage",
                          onTapScreenTitle: () => onTapScreenTitle( 
                            context, AppRoutes.homepageScreen)
                          ),
                      _buildScreenTitle(
                          context,
                          screenTitle: "ProductPage",
                          onTapScreenTitle: () => onTapScreenTitle( 
                            context, AppRoutes.productpageScreen),
                          ),
                      _buildScreenTitle(
                          context,
                          screenTitle: "ProfilePage",
                          onTapScreenTitle: () => onTapScreenTitle( 
                            context, AppRoutes.profilepageScreen),
                      ),
                      _buildScreenTitle(
                          context,
                          screenTitle: "FilterPage - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.filterpageContainerScreen),
                      ),
                      _buildScreenTitle(
                          context,
                          screenTitle: "Cart",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.cartScreen),
                      ),
                     _buildScreenTitle(
                          context,
                          screenTitle: "SplashScreen",
                          onTapScreenTitle: () => onTapScreenTitle( 
                            context, AppRoutes.splashscreenScreen),
                      ),
                      _buildScreenTitle(
                         context,
                        screenTitle: "TrackingPageOne",
                        onTapScreenTitle: () => onTapScreenTitle( 
                          context, AppRoutes.trackingpageoneScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "TrackingPageTwo",
                        onTapScreenTitle: () => onTapScreenTitle(
                          context, AppRoutes.trackingpagetwoScreen),
                        ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Login Seller",
                        onTapScreenTitle: () => onTapScreenTitle( 
                          context, AppRoutes.loginSellerScreen),
                        ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Dasboard Seller",
                        onTapScreenTitle: () => onTapScreenTitle( 
                          context, AppRoutes.dasboardSellerScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Payment Method",
                        onTapScreenTitle: () => onTapScreenTitle( 
                          context, AppRoutes.paymentMethodScreen),
                      ),
                      _buildScreenTitle(
                      context,
                      screenTitle: "Order Finish",
                      onTapScreenTitle: () => onTapScreenTitle( 
                        context, AppRoutes.orderFinishScreen),
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
  Widget _buildAppNavigation (BuildContext context) { 
    return Container(
    decoration: AppDecoration.fillPrimary,
    child: Column(
      children: [
        SizedBox(height: 10.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric (horizontal: 20.h),
            child: Text(
              "App Navigation",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),     
        SizedBox(height: 10.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only (left: 20.h),
            child: Text(
              "Check your app's UI from the below demo screens of your app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.blueGray40001,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),         
        SizedBox(height: 5.v),
        Divider(
          height: 1.v,
          thickness: 1.v,
          color: appTheme.black900,
        )
      ],
    ),
  );
}

  /// Common widget 
  Widget _buildScreenTitle( 
    BuildContext context, { 
    required String screenTitle, 
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
    onTap: () {
      onTapScreenTitle?.call();
    },
    child: Container(
      decoration: AppDecoration. fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric (horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ), 
              ),
            ),
          ),
          SizedBox(height: 10.v), 
          SizedBox(height: 5.v), 
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.blueGray40001,
            )
          ],
        ),
    ),
    );
  }

     /// Common click event 
     void onTapScreenTitle(
      BuildContext context, 
      String routeName,
      ) {
         Navigator.pushNamed (context, routeName);
          }
}
