import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/theme/theme_helper.dart';
/// A class that offers pre-defined button styles for customizing button appearance. 
class CustomButtonStyles {
// Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom( 
    backgroundColor: appTheme.gray20001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.h),
      ),
    );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom( 
    backgroundColor: theme.colorScheme.primary.withOpacity(1), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.h),
      ),
    );
  static ButtonStyle get fillRed => ElevatedButton.styleFrom( 
    backgroundColor: appTheme.red300,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.h),
      ),
    );
  static ButtonStyle get fillRedTL10 => ElevatedButton.styleFrom( 
    backgroundColor: appTheme.red300,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular (10.h),
      ),
    );
// Outline button style
  static ButtonStyle get outlineRedTL20 => OutlinedButton.styleFrom( 
    backgroundColor: appTheme.red300,
    side: BorderSide(
      color: appTheme.red300,
      width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular (20.h),
     ),
    );
// text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0),
);
}

