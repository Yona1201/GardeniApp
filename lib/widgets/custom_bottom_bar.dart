import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Vector, Vectorred300, Shoppingcart, Vectorred30030x29 } 
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function (BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> { 
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [ 
    BottomMenuModel(
      icon: ImageConstant.imgVector, 
      activeIcon: ImageConstant.imgVector, 
      type: BottomBarEnum.Vector,
      ),
    BottomMenuModel(  
      icon: ImageConstant.imgVectorRed300, 
      activeIcon: ImageConstant.imgVectorRed300, 
      type: BottomBarEnum. Vectorred300,
      ),
    BottomMenuModel(
      icon: ImageConstant.imgShoppingCart,
      activeIcon: ImageConstant.imgShoppingCart,
      type: BottomBarEnum. Shoppingcart,
      ),
    BottomMenuModel(
    icon: ImageConstant.imgVectorRed30030x29, 
    activeIcon: ImageConstant.imgVectorRed30030x29,
    type: BottomBarEnum. Vectorred30030x29,
    )
  ];

  @override
  Widget build(BuildContext context) {
  return Container(
    height: 82.v,
    decoration: BoxDecoration(
     color: appTheme.gray20003,
     borderRadius: BorderRadius.vertical( 
      bottom: Radius.circular (20.h),
    ),
  ),
  child: BottomNavigationBar(
    backgroundColor: Colors.transparent, 
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedFontSize: 0, 
    elevation: 0,
    currentIndex: selectedIndex,
    type: BottomNavigationBarType.fixed,
    items: List.generate (bottomMenuList.length, (index) { 
      return BottomNavigationBarItem(
        icon: CustomImageView(
          imagePath: bottomMenuList[index].icon,
          height: 29.v,
          width: 38.h,
          color: appTheme.red300,
        ),
          activeIcon: CustomImageView(
          imagePath: bottomMenuList[index].activeIcon,
          height: 30.v,
          width: 26.h,
          color: appTheme.red300,
        ),
        label: '',
      );
    }),
    onTap: (index) {
    selectedIndex = index;
    widget.onChanged?.call(bottomMenuList[index].type);
    setState(() {});
          },
        ),
      );
    }
  }
  // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel { 
  BottomMenuModel(
  {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

  class DefaultWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        color: Color(0xffffffff),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Text(
                'Please replace the respective Widget here', 
                style: TextStyle(
                  fontSize: 18,
                    ),
                   )
                 ],
                ),
               ),
              );
            }
          }