import 'package:flutter/material.dart'; 
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../filterpage_page/filterpage_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FilterpageContainerScreen extends StatelessWidget { 
  FilterpageContainerScreen({Key? key})
: super(
  key: key,
);

  GlobalKey<NavigatorState> navigatorkey = GlobalKey();

      @override
      Widget build (BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: Navigator(
            key: navigatorkey,
            onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), 
            transitionDuration: Duration (seconds: 0),
            ),
          ),

      bottomNavigationBar: Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 35.h,
      ),
      child: _buildBottomBar(context),
      ),
    ),
  );
 }

/// Section Widget
  Widget _buildBottomBar (BuildContext context) {
    return CustomBottomBar(
       onChanged: (BottomBarEnum type) {
         Navigator.pushNamed(
          navigatorkey.currentContext!, getCurrentRoute (type));
  },
  );
  }
 
  ///Handling route based on bottom click actions 
  String getCurrentRoute (BottomBarEnum type) { 
    switch (type) {
      case BottomBarEnum. Vector:
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
}
      
