import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';

import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.purple100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgCloseUp,
            height: 352.v,
            width: 365.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
