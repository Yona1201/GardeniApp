import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart'; 
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/imagegallery_item_widget.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable 
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FilterpagePage extends StatelessWidget {
  FilterpagePage({Key? key})
    : super(
      key: key,
    );

  TextEditingController searchController =TextEditingController();
  
  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 62.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric (horizontal: 10.h),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only (left: 44.h),
                                child: Row(
                                  children: [
                                  CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftRed300,
                                  height: 20.v,
                                  width: 11.h,
                                  margin: EdgeInsets.only (bottom: 4.v),
                                  onTap: () {
                                    onTapImgArrowleftone (context);
                                  },
                                  ),
                                  Padding(
                                     padding: EdgeInsets.only (left: 36.h),
                                      child: Text(
                                        "Filter",
                                        style: CustomTextStyles.titleLargeBold,
                                    ),
                                  )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 57.v),
                             _buildSearchRow(context),
                             SizedBox(height: 14.v),
                             Divider(
                               indent: 36.h,
                                endIndent: 39.h,
                                    ),
                                   SizedBox(height: 18.v),
                                    Align(
                                    alignment: Alignment.centerLeft, 
                                    child: Padding(
                                      padding: EdgeInsets.only (left: 51.h), 
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start, 
                                        children: [ 
                                          Container(
                                            margin: EdgeInsets.symmetric (vertical: 6.v),
                                            padding: EdgeInsets.all(1.h),
                                            decoration: AppDecoration.outlineRed.copyWith( 
                                              borderRadius:
                                                BorderRadiusStyle.roundedBorder6,
                                            ),
                                            child: Container(
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              decoration: BoxDecoration(
                                                color: appTheme.red300,
                                                borderRadius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                       Container(
                                          height: 26.v,
                                          width: 55.h,
                                          margin: EdgeInsets.only (left: 15.h),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                              "Color",
                                              style: CustomTextStyles
                                                .titleLargeMerriweatherRed300Bold,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                              "Color",
                                              style: CustomTextStyles
                                                .titleLargeMerriweatherRed300Bold,
                                              ),
                                            )
                                          ],
                                        ),
                                       )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 45.h,
                                       right: 48.h,        
                                      ),
                                             
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center, 
                                        crossAxisAlignment: CrossAxisAlignment.end, children: [
                                          SizedBox(
                                            height: 47.v,
                                            width: 50.h,
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                              Align(
                                                alignment: Alignment.bottomLeft, 
                                                child: Container(
                                                  height: 41.v,
                                                  width: 42.h,
                                                  decoration: BoxDecoration(
                                                    color: 
                                                    theme.colorScheme.errorContainer, 
                                                    borderRadius: BorderRadius.circular( 
                                                      21.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                               alignment: Alignment.topRight,
                                               child: Container(
                                                height: 12.adaptSize,
                                                 width: 12.adaptSize,
                                                 padding: EdgeInsets.all(1.h),
                                                 decoration:
                                                        AppDecoration.fillRed.copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle.roundedBorder6,
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant.imgFiRrCheck,
                                                      height: 8.adaptSize,
                                                      width: 8.adaptSize,
                                                      alignment: Alignment.bottomRight,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                           Container(
                                             height: 41.v,
                                             width: 42.h,
                                             margin: EdgeInsets.only(
                                              left: 17.h,
                                              top: 6.v,
                                              ), 
                                              decoration: BoxDecoration(
                                                    color: theme.colorScheme.onPrimary,                                      
                                                    borderRadius: BorderRadius.circular(
                                                    21.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 41.v, 
                                                  width: 42.h,
                                                  margin: EdgeInsets.only(
                                                    left: 25.h,
                                                    top: 6.v,
                                                    ),
                                                    decoration: BoxDecoration(
                                                    color: appTheme.orange700,
                                                    borderRadius: BorderRadius.circular(
                                                    21.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 41.v,
                                                  width: 42.h,
                                                  margin: EdgeInsets.only(
                                                    left: 25.h,
                                                    top: 6.v,
                                                    ),
                                                    decoration: BoxDecoration(
                                                    color: appTheme.yellowA400,
                                                    borderRadius: BorderRadius.circular(
                                                     21.h,
                                                    ),
                                                  ),
                                                ),
                                               Container(
                                                height: 41.v,
                                                width: 42.h,
                                                margin: EdgeInsets.only(
                                                  left: 25.h,
                                                  top: 6.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.lightGreenA400, 
                                                    borderRadius: BorderRadius.circular(
                                                    21.h,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox (height: 31.v),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 44.h,
                                                right: 48.h,
                                                ),
                                                 child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        height: 41.v,
                                                        width: 42.h,
                                                        decoration: BoxDecoration(
                                                          color: appTheme.black900,
                                                          borderRadius: BorderRadius.circular(
                                                          21.h,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 41.v,
                                                        width: 42.h,
                                                        margin: EdgeInsets.only (left: 26.h), 
                                                        decoration: BoxDecoration(
                                                          color: appTheme.deepPurpleA700,
                                                          borderRadius: BorderRadius.circular(                                                       
                                                            21.h,
                                                        ),
                                                      ),
                                                    ),
                                                     Container(
                                                      height: 41.v,
                                                      width: 42.h,
                                                      margin: EdgeInsets.only (left: 26.h),
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme.primaryContainer, 
                                                        borderRadius: BorderRadius.circular(
                                                          21.h,
                                                        ),
                                                      ),
                                                    ),
                                                      Container(
                                                        height: 41.v,
                                                        width: 42.h,
                                                        margin: EdgeInsets.only (left: 26.h),
                                                        decoration: BoxDecoration(
                                                          color:
                                                            theme.colorScheme.primary.withOpacity(1),
                                                            borderRadius: BorderRadius.circular(
                                                            21.h,
                                                            ),
                                                            border: Border.all(
                                                              color: appTheme.red300,
                                                              width: 1.h,
                                                            ),
                                                          ),
                                                        ),
                                                       Container(
                                                         height: 41.v, 
                                                         width: 42.h,
                                                         margin: EdgeInsets.only (left: 26.h),
                                                         decoration: BoxDecoration(
                                                          color: appTheme.orange100,
                                                          borderRadius: BorderRadius.circular(
                                                          21.h,
                                                          ),
                                                         ),
                                                       )
                                                    ],
                                                 ),
                                               ),
                                                SizedBox (height: 30.v), 
                                                Divider(
                                                  indent: 36.h,
                                                  endIndent: 39.h,      
                                                ),
                                                SizedBox(height: 1.v),
                                                _buildFlowerTypeStack (context),
                                                SizedBox(height: 538.v),
                                                Divider(
                                                  indent: 18.h,
                                                ),
                                                SizedBox (height: 24.v),
                                                _buildCategoryRadio(context),
                                                SizedBox(height: 19.v),
                                                _buildClassicStack(context)
                                                ],
                                               ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                   ),
    );
  }

    /// Section Widget
    Widget _buildSearchRow(BuildContext context) { 
      return Padding(
      padding: EdgeInsets.symmetric (horizontal: 15.h), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController, 
              hintText: "Find your best flower",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFiRrSettingsSliders, 
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 10.v,
                bottom: 10.v,
              ),
            )
          ],
        ),
      );
    }

    /// Section Widget
    Widget _buildFlowerTypeStack (BuildContext context) {
      return SizedBox(
        height: 418.v,
        width: 361.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 7.v,
                  right: 337.h,
                ), 
                padding: EdgeInsets.all(1.h),
                decoration: AppDecoration.outlineRed.copyWith( 
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Container(
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.red300,
                    borderRadius: BorderRadius.circular(
                    4.h,
                    ),
                   ),
                  ),
                 ),
                ),
                Align(
                  alignment: Alignment.center, 
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                      width: 76.h,
                      margin: EdgeInsets.only (left: 40.h),
                      child: Text(
                       "Type of Flower",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeMerriweatherRed300Bold,
                      ),
                      ),
                        SizedBox(height: 5.v),
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 1.h,
                            crossAxisCount: 2,
                            mainAxisExtent: 361.v,
                            crossAxisSpacing: 1.h,
                        ),
                        physics: NeverScrollableScrollPhysics(), 
                        itemCount: 4,
                        itemBuilder: (context, index) { 
                          return ImagegalleryItemWidget();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          );
    }

  /// Section Widget
  Widget _buildCategoryRadio (BuildContext context) { 
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only (left: 36.h),
        child: CustomRadioButton(
          text: "Category",
          value: "Category",
          groupValue: radioGroup,
          onChange: (value) {
            radioGroup = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClassicStack(BuildContext context) { 
    return SizedBox(
      height: 238.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only (right: 286.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                       vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith( 
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRosessssssss1, 
                      height: 75.v,
                      width: 63.h,
                      alignment: Alignment.topCenter,
                    ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                    "Roses",
                    style: CustomTextStyles.labelLargeBlack,
                    )
                ],
              ),
            ),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric (horizontal: 143.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 3.v,
                  ),
                  decoration: AppDecoration.fillBluegray10002.copyWith( 
                    borderRadius: BorderRadiusStyle.circleBorder40,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1,
                    height: 73.v,
                    width: 64.h,
                    alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 9.v),
                    Text(
                    "Classic",
                    style: CustomTextStyles.labelLargeBlack,
                    )
              ],
            ),
          ),
        ),
      StaggeredGridView.countBuilder(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 6,
        crossAxisSpacing: 58.h,
        mainAxisSpacing: 58.h,
        staggeredTileBuilder: (index) { 
          return StaggeredTile.fit(2);
        },
        itemCount: 4,
        itemBuilder: (context, index) { 
          return UserprofileItemWidget();
        },
        )
      ],
    ),
  );
}
/// Navigates back to the previous screen. 
onTapImgArrowleftone (BuildContext context) { 
  Navigator.pop(context);
        }
}                     
