import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/modules/navigation/views/navigation_view.dart';
import 'package:gardeniapp/app/modules/registerScreen/views/register_screen_view.dart';

import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  LoginScreenView({Key? key}) : super(key: key);
  final LoginScreenController loginScreenController =
      Get.put(LoginScreenController());
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
                padding: EdgeInsets.only(
                  left: 64.h,
                  top: 79.v,
                  right: 64.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 427.v,
                      width: 300.h,
                      margin: EdgeInsets.only(left: 2.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseUp,
                            height: 300.adaptSize,
                            width: 300.adaptSize,
                            alignment: Alignment.topCenter,
                          ),
                          _buildLoginForm(context)
                        ],
                      ),
                    ),
                    SizedBox(height: 26.v),
                    _buildForgotPasswordSection(context),
                    SizedBox(height: 37.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Don't have an account?",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => RegisterScreenView());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "Sign up",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5.v)
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              controller: loginScreenController.userNameController,
              hintText: "Username",
              focusNode: FocusNode(), // Add this line
            ),
            SizedBox(height: 22.v),
            CustomTextFormField(
              controller: loginScreenController.passwordController,
              hintText: "Password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              focusNode: FocusNode(), // Add this line
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Text(
              "forgot Password",
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          SizedBox(height: 6.v),
          CustomElevatedButton(
            text: "Login",
            margin: EdgeInsets.only(right: 1.h),
            onPressed: () {
              loginScreenController.loginUser();
            },
          )
        ],
      ),
    );
  }
}
