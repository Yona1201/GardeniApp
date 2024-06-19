import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../filterpage_page/filterpage_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductpageScreen extends StatelessWidget {
  ProductpageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.delivery_dining_outlined,
                color: Colors.pink,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.pink,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              label: 'Home')
        ]),
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgRoses2,
                height: 256.v,
                width: 273.h,
              ),
              SizedBox(height: 77.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 34.h,
                  right: 43.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "101 Rose",
                      style: theme.textTheme.headlineMedium,
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgStar1,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      margin: EdgeInsets.only(
                        top: 11.v,
                        bottom: 4.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "4.8",
                        style: theme.textTheme.titleMedium,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 41.h),
                  child: Text(
                    "100 K",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text(
                    "Description",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  right: 29.h,
                ),
                child: Text(
                  "The rose, a symbol of love and beauty, transcends",
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                height: 48.v,
                text: "Add to cart",
                margin: EdgeInsets.only(right: 12.h),
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle:
                    CustomTextStyles.titleMediumMerriweatherPrimary,
              )
            ],
          ),
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
        margin: EdgeInsets.fromLTRB(54.h, 18.v, 365.h, 18.v),
        onTap: () {
          onTapArrowleftone(context);
        },
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
      case BottomBarEnum.Vectorred300:
        return "/";
      case BottomBarEnum.Shoppingcart:
        return "/";
      case BottomBarEnum.Vectorred30030x29:
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
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
