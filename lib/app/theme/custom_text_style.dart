import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get jejuHallasan {
    return copyWith(
      fontFamily: 'JejuHallasan',
    );
  }

  TextStyle get merriweather {
    return copyWith(
      fontFamily: 'Merriweather',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
// Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeBlack90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallInterRed300 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w400,
      );
// Headline text style
  static get headlineMedium26 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 26.fSize,
      );
  static get headlineMediumMerriweather =>
      theme.textTheme.headlineMedium!.merriweather.copyWith(
        fontSize: 27.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumRed300 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.red300,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallMerriweatherTea1700 =>
      theme.textTheme.headlineSmall!.merriweather.copyWith(
        color: appTheme.teal700,
        fontWeight: FontWeight.w700,
      );
// Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeBlack => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get labelLargeRed300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeRed30013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red300,
        fontSize: 13.fSize,
      );
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
// Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMerriweather =>
      theme.textTheme.titleLarge!.merriweather.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMerriweatherRed300 =>
      theme.textTheme.titleLarge!.merriweather.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeMerriweatherRed300Bold =>
      theme.textTheme.titleLarge!.merriweather.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRalewayOnErrorContainer =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRed300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumBluegray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get titleMediumMerriweather =>
      theme.textTheme.titleMedium!.merriweather.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get profile => theme.textTheme.titleLarge!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumMerriweatherPrimary =>
      theme.textTheme.titleMedium!.merriweather.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMerriweatherRed300 =>
      theme.textTheme.titleMedium!.merriweather.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumRed300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red300,
      );
  static get titleMediumRed300SemiBold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red300.withOpacity(0.73),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterBluegray10001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRalewayOnErrorContainer =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}
