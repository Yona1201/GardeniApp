import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofilesectionItemWidget extends StatelessWidget { const UserprofilesectionItemWidget({Key? key})
    : super(
    key: key,
    );
    
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 80.adaptSize,
              width: 80.adaptSize,
              padding: EdgeInsets.symmetric(
                 horizontal: 11.h,
                  vertical: 9.v,
              ),
              decoration: AppDecoration. fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
             child: CustomImageView(
              imagePath: ImageConstant.imgImage7, 
              height: 60.v,
              width: 58.h,
              alignment: Alignment.center,
              ),
            ),
          ),
         SizedBox(height: 9.v),
        Align(
          alignment: Alignment.centerRight, 
          child: Text(
               "for Wedding",
              style: theme.textTheme.labelLarge,
              ),
            )
        ],
      ),
    );
  }
}
             