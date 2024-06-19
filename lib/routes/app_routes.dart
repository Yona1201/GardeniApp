import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cart_screen/cart_screen.dart';
import '../presentation/dashboard_seller_screen/dashboard_seller_screen.dart';
import '../presentation/filterpage_container_screen/filterpage_container_screen.dart';
import '../presentation/get_started_screen/get_started_screen.dart';
import '../presentation/homepage_screen/homepage_screen.dart';
import '../presentation/login_seller_screen/login_seller_screen.dart';
import '../presentation/loginpage_screen/loginpage_screen.dart';
import '../presentation/order_finish_screen/order_finish_screen.dart';
import '../presentation/payment_method_screen/payment_method_screen.dart';
import '../presentation/productpage_screen/productpage_screen.dart';
import '../presentation/profilepage_screen/profilepage_screen.dart';
import '../presentation/signuppage_screen/signuppage_screen.dart';
import '../presentation/splashscreen_screen/splashscreen_screen.dart';
import '../presentation/trackingpageone_screen/trackingpageone_screen.dart';
import '../presentation/trackingpagetwo_screen/trackingpagetwo_screen.dart';


class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String loginpageScreen = '/loginpage_screen';

  static const String signuppageScreen ='/signuppage_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String productpageScreen ='/productpage_screen';

  static const String profilepageScreen ='/profilepage_screen';
  
  static const String filterpageContainerScreen = '/filterpage_container_screen';

  static const String filterpagePage = '/filterpage_page';

  static const String cartScreen = '/cart_Screen';

  static const String splashscreenScreen = '/splashscreen_screen';
  
  static const String trackingpageoneScreen = '/trackingpageone_screen';
  
  static const String trackingpagetwoScreen = '/trackingpagetwo_screen';

  static const String loginSellerScreen = '/login_seller_screen'; 
  
  static const String dasboardSellerScreen = '/dasboard_seller_screen'; 
  
  static const String paymentMethodScreen = '/payment_method_screen';
  
  static const String orderFinishScreen = '/order_finish_screen';
  
  static const String appNavigationScreen = '/app_navigation_screen';
  
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    getStartedScreen: (context) => GetStartedScreen(), 
    loginpageScreen: (context) => LoginpageScreen(), 
    signuppageScreen: (context) => SignuppageScreen(), 
    homepageScreen: (context) => HomepageScreen(),
    productpageScreen: (context) => ProductpageScreen(), 
    profilepageScreen: (context) => ProfilepageScreen(),
    filterpageContainerScreen: (context) => FilterpageContainerScreen(), 
    cartScreen: (context) => CartScreen(),
    splashscreenScreen: (context) => SplashscreenScreen(),
    trackingpageoneScreen: (context) => TrackingpageoneScreen(), 
    trackingpagetwoScreen: (context) => TrackingpagetwoScreen(), 
    loginSellerScreen: (context) => LoginSellerScreen(), 
    dasboardSellerScreen: (context) => DasboardSellerScreen(), 
    paymentMethodScreen: (context) => PaymentMethodScreen(), 
    orderFinishScreen: (context) => OrderFinishScreen(), 
    appNavigationScreen: (context) => AppNavigationScreen(), 
    initialRoute: (context) => SplashscreenScreen()
  };
}