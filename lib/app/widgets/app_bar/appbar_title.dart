import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';

class AppbarTitle extends StatelessWidget {
AppbarTitle({Key? key, required this.text, this.margin, this.onTap}) 
    : super(
        key: key,
      );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build (BuildContext context) {
  return GestureDetector(
    onTap: () {
      onTap?.call();
    },
    child: Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        style: CustomTextStyles.titleLargeBold.copyWith(
          color: appTheme.black900,
        ),
      ),
    ),
  );
  }
}