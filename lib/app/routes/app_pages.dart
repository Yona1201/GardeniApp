import 'package:get/get.dart';

import '../modules/cartScreen/bindings/cart_screen_binding.dart';
import '../modules/cartScreen/views/cart_screen_view.dart';
import '../modules/dashboardScreen/bindings/dashboard_screen_binding.dart';
import '../modules/dashboardScreen/views/dashboard_screen_view.dart';
import '../modules/dashboardsellerScreen/bindings/dashboardseller_screen_binding.dart';
import '../modules/dashboardsellerScreen/views/dashboardseller_screen_view.dart';
import '../modules/getStarted/bindings/get_started_binding.dart';
import '../modules/getStarted/views/get_started_view.dart';
import '../modules/loginScreen/bindings/login_screen_binding.dart';
import '../modules/loginScreen/views/login_screen_view.dart';
import '../modules/loginSellerScreen/bindings/login_seller_screen_binding.dart';
import '../modules/loginSellerScreen/views/login_seller_screen_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/paymentScreen/bindings/payment_screen_binding.dart';
import '../modules/paymentScreen/views/payment_screen_view.dart';
import '../modules/productScreen/bindings/product_screen_binding.dart';
import '../modules/productScreen/views/product_screen_view.dart';
import '../modules/profileScreen/bindings/profile_screen_binding.dart';
import '../modules/profileScreen/views/profile_screen_view.dart';
import '../modules/registerScreen/bindings/register_screen_binding.dart';
import '../modules/registerScreen/views/register_screen_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';
import '../modules/trackingScreen/bindings/tracking_screen_binding.dart';
import '../modules/trackingScreen/views/tracking_screen_view.dart';
import '../modules/trackingScreen2/bindings/tracking_screen2_binding.dart';
import '../modules/trackingScreen2/views/tracking_screen2_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.GET_STARTED;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SCREEN,
      page: () => RegisterScreenView(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SELLER_SCREEN,
      page: () => LoginSellerScreenView(),
      binding: LoginSellerScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD_SCREEN,
      page: () => DashboardScreenView(),
      binding: DashboardScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARDSELLER_SCREEN,
      page: () => DashboardsellerScreenView(),
      binding: DashboardsellerScreenBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.TRACKING_SCREEN,
      page: () => TrackingScreenView(),
      binding: TrackingScreenBinding(),
    ),
    GetPage(
      name: _Paths.TRACKING_SCREEN2,
      page: () => TrackingScreen2View(
        orderId: '',
      ),
      binding: TrackingScreen2Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.CART_SCREEN,
      page: () => CartScreenView(),
      binding: CartScreenBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SCREEN,
      page: () => PaymentScreenView(),
      binding: PaymentScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_SCREEN,
      page: () => ProductScreenView(),
      binding: ProductScreenBinding(),
    ),
  ];
}
