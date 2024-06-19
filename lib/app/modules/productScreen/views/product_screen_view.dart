import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';

import 'package:get/get.dart';

import '../../../core/model/Product.dart';
import '../../../core/network/service.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controllers/product_screen_controller.dart';

class ProductScreenView extends GetView<ProductScreenController> {
  ProductScreenView({Key? key}) : super(key: key);
  final Map<String, dynamic> arguments = Get.arguments;
  final Service productService = Service(); // Create an instance

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: arguments['image'],
                height: 256.v,
                width: 273.h,
              ),
              SizedBox(height: 77.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 34.h,
                  right: 43.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arguments['title'],
                      style: theme.textTheme.headlineMedium,
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgStar1,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      margin: EdgeInsets.only(
                        top: 11.v,
                        bottom: 4.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "4.8",
                        style: theme.textTheme.titleMedium,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 41.h),
                  child: Text(
                    "${arguments['price']} K",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text(
                    "Description",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  right: 29.h,
                ),
                child: Text(
                  arguments['deskripsi'],
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                height: 48.v,
                text: "Add to cart",
                margin: EdgeInsets.only(right: 12.h),
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle:
                    CustomTextStyles.titleMediumMerriweatherPrimary,
                onPressed: () {
                  Product product = Product(
                      name: arguments['title'],
                      description: arguments['deskripsi'],
                      price: arguments['price'],
                      imageUrl: arguments['image']);
                  productService.addToCart(product);
                },
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
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftRed300,
        margin: EdgeInsets.fromLTRB(54.h, 18.v, 365.h, 18.v),
        onTap: () {
          Get.back();
        },
      ),
    );
  }
}
