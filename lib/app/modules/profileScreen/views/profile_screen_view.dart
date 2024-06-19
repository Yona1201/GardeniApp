import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/modules/dashboardScreen/controllers/dashboard_screen_controller.dart';
import 'package:gardeniapp/app/modules/getStarted/views/get_started_view.dart';

import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/custom_text_style.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  ProfileScreenView({Key? key}) : super(key: key);
  final DashboardScreenController pcontroller =
      Get.put(DashboardScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCircleImageColumn(context),
              SizedBox(height: 51.v),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgName,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 7.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: CustomTextStyles.titleLargeSemiBold,
                          ),
                          SizedBox(height: 2.v),
                          Obx(() => Text(
                                '${pcontroller.userName}',
                                style: CustomTextStyles.profile,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgDepartment,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 12.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Address",
                            style: CustomTextStyles.titleLargeSemiBold,
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "NCT Dorm",
                            style: CustomTextStyles.titleLargeRegular,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPhone,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 12.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "Phone no.",
                              style: CustomTextStyles.titleLargeSemiBold,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "+62 8234578423",
                            style: CustomTextStyles.titleLargeRegular,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 44.h,
                  right: 82.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEmail,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(
                        top: 6.v,
                        bottom: 7.v,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 33.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E-Mail",
                              style: CustomTextStyles.titleLargeSemiBold,
                            ),
                            SizedBox(height: 3.v),
                            Obx(() => Text(
                                  '${pcontroller.userEmail}',
                                  style: CustomTextStyles.profile,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      onTap: () {
                        Get.offAll(() => GetStartedView());
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => GetStartedView());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 35.h,
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "Log Out",
                          style: CustomTextStyles.titleLargeRed300,
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
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      // leadingWidth: 65.h,
      title: AppbarTitle(
        text: "Profile",
        margin: EdgeInsets.only(left: 51.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCircleImageColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 116.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup3,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        height: 195.v,
        width: 196.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(97.h),
          ),
          color: Colors.blue,
          image: DecorationImage(
            image: NetworkImage(
  "https://media.suara.com/pictures/653x366/2023/08/03/11205-potret-mark-twitteratnctsmtown.jpg",
),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
