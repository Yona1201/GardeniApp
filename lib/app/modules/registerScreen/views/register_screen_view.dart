import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../navigation/views/navigation_view.dart';
import '../controllers/register_screen_controller.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  RegisterScreenView({Key? key}) : super(key: key);
  final RegisterScreenController registerScreenController =
      Get.put(RegisterScreenController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
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
                    left: 62.h,
                    top: 79.v,
                    right: 62.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 337.v,
                        width: 302.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 300.adaptSize,
                                width: 300.adaptSize,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCloseUp,
                                      height: 300.adaptSize,
                                      width: 300.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 20.v,
                                      width: 11.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(
                                        left: 4.h,
                                        top: 25.v,
                                      ),
                                      onTap: () {
                                        Get.back();
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            _buildNameEditText(context)
                          ],
                        ),
                      ),
                      SizedBox(height: 30.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 30.v),
                      _buildPasswordEditText(context),
                      SizedBox(height: 60.v),
                      _buildSignUpButton(context),
                      SizedBox(height: 5.v)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: CustomTextFormField(
        // width: 287.h,
        controller: registerScreenController.nameEditTextController,
        hintText: "Name",
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: CustomTextFormField(
        controller: registerScreenController.emailEditTextController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: CustomTextFormField(
        controller: registerScreenController.passwordEditTextController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      margin: EdgeInsets.only(left: 19.h),
      onPressed: () {
        registerScreenController.registerUser();
      },
    );
  }
}
