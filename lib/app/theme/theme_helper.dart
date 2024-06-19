import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart'; 

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor(); 
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
// A map of custom color themes supported by the app 
  Map<String, LightCodeColors> _supportedCustomColor = {
  'lightCode': LightCodeColors ()
};

// A map of color schemes supported by the app 
  Map<String, ColorScheme> _supportedColorScheme = { 
  'lightCode': ColorSchemes.lightCodeColorScheme
};

/// Changes the app theme to [_newTheme].
void changeTheme (String _newTheme) {
_appTheme = _newTheme;
}

/// Returns the lightCode colors for the current theme.
LightCodeColors _getThemeColors() {
return _supportedCustomColor[_appTheme] ?? LightCodeColors();
}

/// Returns the current theme data. 
ThemeData _getThemeData() { 
  var colorScheme =
    _supportedColorScheme [_appTheme] ?? ColorSchemes.lightCodeColorScheme;
  return ThemeData(
    visualDensity: VisualDensity.standard,
    colorScheme: colorScheme,
    textTheme: TextThemes.textTheme (colorScheme),
    scaffoldBackgroundColor: colorScheme.primary.withOpacity(1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
      backgroundColor: colorScheme.primary, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      visualDensity: const VisualDensity(
        vertical: -4,
        horizontal: -4,
  ),
  padding: EdgeInsets.zero,
  ),
),
outlinedButtonTheme: OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
  backgroundColor: Colors.transparent, 
  side: BorderSide(
    color: appTheme.red300,
    width: 1,
),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  visualDensity: const VisualDensity(
    vertical: -4,
    horizontal: -4,
  ),
  padding: EdgeInsets.zero,
  ),
),
radioTheme: RadioThemeData(
fillColor: MaterialStateColor.resolveWith((states) { 
  if (states.contains(MaterialState.selected)) {
    return appTheme.red300;
  }
  return Colors.transparent;
}),
  visualDensity: const VisualDensity(
    vertical: -4,
    horizontal: -4,
  ),
  ),
  dividerTheme: DividerThemeData( 
    thickness: 1, 
    space: 1,
    color: appTheme.red300,
    ),
  );
}

/// Returns the lightCode colors for the current theme. 
LightCodeColors themeColor() => _getThemeColors();

/// Returns the current theme data.
ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
static TextTheme textTheme (ColorScheme colorScheme) => TextTheme( 
  bodyLarge: TextStyle(
    color: appTheme.red300.withOpacity(0.73),
    fontSize: 16.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
),
  bodyMedium: TextStyle(
    color: appTheme.blueGray400,
    fontSize: 13.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
),
  bodySmall: TextStyle(
    color: appTheme.black900,
    fontSize: 12.fSize,
    fontFamily: 'Merriweather', 
    fontWeight: FontWeight.w300,
  ),
  displayMedium: TextStyle(
    color: colorScheme.onPrimaryContainer,
    fontSize: 40.fSize,
    fontFamily: 'JejuHallasan', 
    fontWeight: FontWeight.w400,
  ),
  headlineLarge: TextStyle( 
    color: appTheme.teal700, 
    fontSize: 32.fSize,
    fontFamily: 'Merriweather', 
    fontWeight: FontWeight.w700,
),
  headlineMedium: TextStyle( 
    color: appTheme.black900, 
    fontSize: 28. fSize,
    fontFamily: 'Inter', 
    fontWeight: FontWeight.w500,
),
  headlineSmall: TextStyle( 
    color: appTheme.black900,
    fontSize: 24.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
),
  labelLarge: TextStyle(
    color: appTheme.black900,
    fontSize: 12.fSize,
    fontFamily: 'Merriweather', 
    fontWeight: FontWeight.w700,
),
  labelMedium: TextStyle(
    color: appTheme.black900, 
    fontSize: 10.fSize,
    fontFamily: 'Merriweather', 
    fontWeight: FontWeight.w700,
),
  titleLarge: TextStyle(
    color: appTheme.black900, 
    fontSize: 20.fSize,
  fontFamily: 'Inter', 
  fontWeight: FontWeight.w500,
),
  titleMedium: TextStyle(
    color: appTheme.black900, 
    fontSize: 18.fSize,
    fontFamily: 'Inter', 
    fontWeight: FontWeight.w500,
),
  titleSmall: TextStyle(
    color: appTheme.red300,
    fontSize: 15.fSize,
    fontFamily: 'Merriweather',
    fontWeight: FontWeight.w900,
  ),
);
}

/// Class containing the supported color schemes. 
class ColorSchemes {  
  static final lightCodeColorScheme = ColorScheme.light( 
    primary: Color (0XCCFFFFFF),
    primaryContainer: Color (0XFF3B4FFF),
    errorContainer: Color (0XFFF59DED),
    onErrorContainer: Color (0XFF202020), 
    onPrimary: Color (0XFFFF0000),
    onPrimaryContainer: Color (0XFF080808),
);
}

/// Class containing custom colors for a lightCode theme. 
class LightCodeColors {
// Black
Color get black900 => Color (0XFF000000);
 // BlueGray
Color get blueGray100 => Color (0XFFD5D4D4); 
Color get blueGray10001 => Color (0XFFCCCCCC); 
Color get blueGray10002 => Color (0XFFD9D9D9); 
Color get blueGray400 => Color (0XFF878787); 
Color get blueGray40001 => Color (0XFF888888); 
// DeepPurple
Color get deepPurpleA700 => Color (0XFF6000FF); 
// Gray
Color get gray100 => Color (0XFFF4FCF6);
Color get gray10001 => Color (0XFFF2F4F5);
Color get gray200 => Color (0XFFEFEFEF); 
Color get gray20001 => Color (0XFFECECEC); 
Color get gray20002 => Color (0XFFEAEAEA); 
Color get gray20003 => Color (0XFFF0F0F0);
Color get gray20004 => Color (0XFFEBECEB);
Color get gray300 => Color (0XFFDAEFDE);
Color get gray600 => Color (0XFF7B7A7A); 
Color get gray900 => Color (0XFF242424); 
// LightGreen
Color get lightGreenA400 => Color (0XFF8CF30A); 
// Lime
Color get lime900 => Color (0XFF8D510A); 
// Orange
Color get orange100 => Color (0XFFFFE1B4); 
Color get orange700 => Color (0XFFFF7A00); 
// Purple
Color get purple100 => Color(0XFFDCC5D2);
//Red
Color get red300 => Color (0XFFDA686D); 
// Teal
Color get teal700 => Color (0XFF198155); 
//Yellow
Color get yellowA400 => Color (0XFFFFE501); 
}
