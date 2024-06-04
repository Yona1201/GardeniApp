import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class AutumnthreesectionItemWidget extends StatelessWidget {
const AutumnthreesectionItemWidget({Key? key})
    : super(
      key: key,
    );

  @override
  Widget build (BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
         borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 136.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
          imagePath: ImageConstant.imgRosesss1,
          height: 92.adaptSize,
          width: 92.adaptSize,
          ),
          Text(
            "101 red roses",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "100 K",
            style: theme.textTheme.titleSmall,
            ),
          ),
            SizedBox (height: 3.v)
        ],
      ),
    );
  }
}