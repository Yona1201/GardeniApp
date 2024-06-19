import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// Design baseline sizes
const double FIGMA_DESIGN_WIDTH = 430;
const double FIGMA_DESIGN_HEIGHT = 932;

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => SizeUtils.height;
  double get h => ((this * _width) / FIGMA_DESIGN_WIDTH);
  double get v => (this * _height) / FIGMA_DESIGN_HEIGHT;
  double get adaptSize => (v < h ? v : h).toDoubleValue();
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }

  double isNonZero({double defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue;
  }
}

enum DeviceType { mobile, tablet, desktop }

class SizeUtils {
  static late double width, height;
  static late DeviceType deviceType;

  static void setScreenSize(
      BoxConstraints constraints, Orientation orientation) {
    width = constraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
    height = constraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_HEIGHT);

    // Example simplistic device type determination
    if (width < 600) {
      deviceType = DeviceType.mobile;
    } else if (width < 1200) {
      deviceType = DeviceType.tablet;
    } else {
      deviceType = DeviceType.desktop;
    }
  }
}

class Sizer extends StatelessWidget {
  final Widget Function(
          BuildContext context, Orientation orientation, DeviceType deviceType)
      builder;

  const Sizer({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}
