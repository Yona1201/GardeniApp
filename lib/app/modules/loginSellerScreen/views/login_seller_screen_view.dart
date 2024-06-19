import 'package:flutter/material.dart';
import 'package:gardeniapp/app/modules/dashboardsellerScreen/views/dashboardseller_screen_view.dart';

import 'package:get/get.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';

import '../controllers/login_seller_screen_controller.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';

class LoginSellerScreenView extends GetView<LoginSellerScreenController> {
  LoginSellerScreenView({Key? key}) : super(key: key);
  final LoginSellerScreenController loginSellerScreenController =
      Get.put(LoginSellerScreenController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.only(top: 79.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 5.v),
                    SizedBox(
                      height: 546.v,
                      width: 300.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseUp,
                            height: 300.adaptSize,
                            width: 300.adaptSize,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildLoginForm(context),
                                  SizedBox(height: 26.v),
                                  Text(
                                    "forgot Password",
                                    style: CustomTextStyles.titleMedium_1,
                                  ),
                                  SizedBox(height: 6.v),
                                  CustomElevatedButton(
                                    width: 287.h,
                                    text: "Login",
                                    onPressed: () async {
                                      await loginSellerScreenController
                                          .loginSeller();
                                    },
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          width: 287.h,
          controller: loginSellerScreenController.emailController,
          hintText: "Username",
        ),
        SizedBox(height: 22.v),
        CustomTextFormField(
          width: 287.h,
          controller: loginSellerScreenController.passwordController,
          hintText: "Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        )
      ],
    );
  }
}
