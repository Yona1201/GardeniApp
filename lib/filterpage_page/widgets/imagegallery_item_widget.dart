import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ImagegalleryItemWidget extends StatelessWidget {
    const ImagegalleryItemWidget({Key? key})
    : super(
      key: key,
    );
    
  @override
  Widget build (BuildContext context) {
    return Column (
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 1.v,
                bottom: 2.v,
                ),
                padding: EdgeInsets.symmetric (horizontal: 4.h), 
                decoration: AppDecoration.outlineRed300.copyWith( 
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOrchids1,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      ),
                      Text(
                        "Orchids",
                        style: CustomTextStyles.labelLarge13,
                        )
                      ],
                    ),
                  ),                    
                  Container(
                  margin: EdgeInsets.only (left: 41.h),
                  padding: EdgeInsets.symmetric (horizontal: 10.h), 
                  decoration: AppDecoration.outlineRed3001.copyWith( 
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTulipl,
                          height: 83.v,
                          width: 70.h,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                      "Tulips",
                      style: CustomTextStyles.titleSmallBlack900,
                      )
                      ],
                  ),
                  )
          ],
        ),
       SizedBox(height: 26.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 3.v,
            ),
            decoration: AppDecoration.outlineRed3001.copyWith( 
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 74.v,
                width: 86.h,
                ),
                Text(
                "Lilies",
                style: CustomTextStyles.labelLarge13,
                )
              ],
            ),
            ),
             Container(
                margin: EdgeInsets. only (left: 41.h),
                padding: EdgeInsets.symmetric (horizontal: 15.h), 
                decoration: AppDecoration.outlineRed3001.copyWith( 
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
             child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 81.v,
                width: 61.h,
                ),
                Text(
                  "Irises",
                style: CustomTextStyles.titleSmallBlack900,
                )
              ],
             ),
             )
          ],
        ),
         SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(
                  top: 1.v,
                  bottom: 2.v,
                ),
                color: appTheme.gray100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: 99.v,
                  width: 92.h,
                  decoration: AppDecoration. fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric (horizontal: 1.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage5,
                                height: 74.v,
                                width: 82.h,
                                ),
                                Text(
                                "Chrysanthemums",
                                style: theme.textTheme.labelMedium,
                                )
                            ],
                          ),
                        ),
                      ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                            horizontal: 1.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.outlineRed3001.copyWith(
                             borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage5,
                                height: 74.v,
                                width: 82.h,
                                ),
                                Text(
                                "Chrysanthemums",
                                style: theme.textTheme.labelMedium,
                                )
                            ],
                          ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
                                Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.only(left: 41.h),
                                color: appTheme.gray100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: 103.v,
                                  width: 93.h,
                                  decoration: AppDecoration. fillGray.copyWith(
                                    borderRadius:BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgTulipl,
                                      height: 83.v,
                                      width: 70.h,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                      "Tulips",
                                      style: CustomTextStyles.titleSmallBlack900,
                                    ),
                                    ),
                                    Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 99.v,
                                      width: 93.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary.withOpacity(1),
                                        borderRadius: BorderRadius.circular(
                                          10.h,
                                        ),
                                        border: Border.all(
                                        color: appTheme.red300.withOpacity(0.32), 
                                        width: 1.h,
                                        ),
                                      ),
                                    ),
                                    ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage6, 
                                    height: 83.v,
                                    width: 77.h,
                                    alignment: Alignment.topCenter,
                                  ),
                                  Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only (bottom: 1.v),
                                    child: Text(
                                    "Mixed",
                                    style: CustomTextStyles.titleSmallBlack900,
                                    ),
                                  ),
                                  )
                                    ],
                                  ),
                                ),
                                )
            ],
          )
      ],
    );
  }
}