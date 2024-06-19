import 'package:flutter/material.dart';
import '../../core/app_export.dart'; 
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignuppageScreen extends StatelessWidget { 
  SignuppageScreen({Key? key})
    : super(
       key: key,
    );
   
  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

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
                bottom: MediaQuery.of (context).viewInsets.bottom,
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
                                  onTapImgArrowleftone(context);
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
    );
  }
    
  /// Section Widget
  Widget _buildNameEditText(BuildContext context) { 
    return CustomTextFormField(
      width: 287.h,
      controller: nameEditTextController, 
      hintText: "Name",
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) { 
    return Padding(
      padding: EdgeInsets. only (left: 19.h),
      child: CustomTextFormField(
        controller: emailEditTextController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress, 
        obscureText: true,
      ),
    );
  }

     /// Section Widget
  Widget _buildPasswordEditText (BuildContext context) { 
    return Padding(
      padding: EdgeInsets.only (left: 19.h), 
      child: CustomTextFormField(
        controller: passwordEditTextController, 
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType:TextInputType.visiblePassword,
        obscureText: true,
        ),
      );
    }

   /// Section Widget
    Widget _buildSignUpButton(BuildContext context) {
     return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets. only (left: 19.h), 
        onPressed: () {
         onTapSignUpButton(context);
        },
     );
    }

/// Navigates back to the previous screen. 
onTapImgArrowleftone (BuildContext context) { 
  Navigator.pop(context);
}
/// Navigates to the homepageScreen when the action is triggered. 
onTapSignUpButton (BuildContext context) {
Navigator.pushNamed (context, AppRoutes.homepageScreen);
}
}