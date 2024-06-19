import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/modules/loginScreen/views/login_screen_view.dart';
import 'package:gardeniapp/app/modules/loginSellerScreen/views/login_seller_screen_view.dart';

import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
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
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGetStarted,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 79.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCloseUp,
                  height: 300.adaptSize,
                  width: 300.adaptSize,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 287.h,
                  child: Text(
                    "Find the best Flower for you",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 88.v),
                CustomElevatedButton(
                  width: 287.h,
                  text: "Customer",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: theme.textTheme.headlineSmall!,
                  onPressed: () {
                    Get.to(() => LoginScreenView());
                  },
                ),
                SizedBox(height: 28.v),
                CustomElevatedButton(
                  width: 287.h,
                  text: "Seller",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: theme.textTheme.headlineSmall!,
                  onPressed: () {
                    Get.to(() => LoginSellerScreenView());
                  },
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
