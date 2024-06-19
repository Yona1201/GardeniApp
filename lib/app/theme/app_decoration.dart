import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart'; 
import 'theme_helper.dart';

class AppDecoration {
// Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration( 
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray10002 => BoxDecoration( 
        color: appTheme.blueGray10002,
      );
  static BoxDecoration get fillGray => BoxDecoration( 
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration( 
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillPrimary => BoxDecoration( 
        color: theme.colorScheme.primary.withOpacity(1), 
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red300,
      );
  static BoxDecoration get fillRed300 => BoxDecoration( 
        color: appTheme.red300.withOpacity(0.13),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration( 
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
      );
static BoxDecoration get outlineBlack900 => BoxDecoration( 
      color: appTheme.purple100,
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
    );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
        color: appTheme.gray20002,
        width: 1.h,
      ),
    );
static BoxDecoration get outlineGray20004 => BoxDecoration(
        border: Border.all(
        color: appTheme.gray20004,
        width: 1.h,
  ),
);
static BoxDecoration get outlineGray300 => BoxDecoration( 
        color: theme.colorScheme.primary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
static BoxDecoration get outlineRed => BoxDecoration( 
        color: theme.colorScheme.primary.withOpacity(1), 
        border: Border.all(
          color: appTheme.red300,
          width: 1.h,
        ),
      );
static BoxDecoration get outlineRed300 => BoxDecoration( 
        color: theme.colorScheme.primary.withOpacity(1), 
        border: Border.all(
          color: appTheme.red300,
          width: 2.h,
        ),
      );
static BoxDecoration get outlineRed3001 => BoxDecoration( 
      color: theme.colorScheme.primary.withOpacity(1),
      border: Border.all(
        color: appTheme.red300.withOpacity(0.32),
        width: 1.h,
        ), 
      );
static BoxDecoration get outlineRed3002 => BoxDecoration( 
      color: appTheme.red300.withOpacity (0.13),
      border: Border.all(
        color: appTheme.red300,
        width: 3.h,
        ),
      );
}

class BorderRadiusStyle {
// Circle borders
static BorderRadius get circleBorder28 => BorderRadius.circular(
      28.h, 
    );
static BorderRadius get circleBorder32 => BorderRadius.circular(
      32.h, 
    );
static BorderRadius get circleBorder40 => BorderRadius.circular(
      40.h, 
    );
// Custom borders
static BorderRadius get customBorderBL20 => BorderRadius.vertical( 
      bottom: Radius.circular(20.h),
);
// Rounded borders
static BorderRadius get roundedBorder1 => BorderRadius.circular(
      1.h, 
    );
static BorderRadius get roundedBorder10 => BorderRadius.circular(
      10.h,
    );
static BorderRadius get roundedBorder20 => BorderRadius.circular(
      20.h,
    );
static BorderRadius get roundedBorder25 => BorderRadius.circular(
      25.h,
    );
static BorderRadius get roundedBorder6 => BorderRadius.circular(
      6.h,
    );
static BorderRadius get roundedBorder97 => BorderRadius.circular(
      97.h,
    );
}