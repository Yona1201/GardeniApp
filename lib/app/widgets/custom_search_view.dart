import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';
import 'package:gardeniapp/app/widgets/custom_image_view.dart';

import '../core/utils/image_constant.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView(
    {Key? key, 
    this.alignment, 
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged}) 
    : super(
        key: key,
    );
  
final Alignment? alignment;

final double? width;

final TextEditingController? scrollPadding;

final TextEditingController? controller;

final FocusNode? focusNode;

final bool? autofocus;

final TextStyle? textStyle;

final TextInputType? textInputType;

final int? maxLines;

final String? hintText;

final TextStyle? hintStyle;

final Widget? prefix;

final BoxConstraints? prefixConstraints;

final Widget? suffix;

final BoxConstraints? suffixConstraints;

final EdgeInsets? contentPadding;

final InputBorder? borderDecoration;

final Color? fillColor;

final bool? filled;

final FormFieldValidator<String>? validator;

final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) { 
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, 
            child: searchViewWidget(context))
          : searchViewWidget (context);
  }

  Widget searchViewWidget (BuildContext context) => SizedBox( 
        width: width ?? double.maxFinite,
        child: TextFormField(
          scrollPadding:
            EdgeInsets.only (bottom: MediaQuery.of (context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (event) {
            if (focusNode != null) {
              focusNode?.unfocus();
            } else {
              FocusManager.instance.primaryFocus?.unfocus();
            }
         },
        autofocus: autofocus!,
        style: textStyle ?? CustomTextStyles.titleMediumRed300,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: decoration,
        validator: validator,
        onChanged: (String value) {
          onChanged?.call(value);
        },
      ),
    );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.titleMediumRed300, 
        prefixIcon: prefix ??
          Container(
          margin: EdgeInsets.all(10.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          ),
  prefixIconConstraints: prefixConstraints ??
    BoxConstraints(
      maxHeight: 44.v,
    ),
    suffixIcon: suffix ??
    Padding(
      padding: EdgeInsets.only(
      right: 15.h,
      ),
      child: IconButton(
        onPressed: () => controller!.clear(),
        icon: Icon(
          Icons.clear,
          color: Colors.grey.shade600,
        ),
      ),
    ),
    suffixIconConstraints: suffixConstraints ??
      BoxConstraints( 
        maxHeight: 44.v,
      ),
    isDense: true,
    contentPadding: contentPadding ??
      EdgeInsets.only(
        top: 11.v,
        right: 11.h,
        bottom: 11.v,
      ),
    fillColor: fillColor ?? appTheme.gray200,
    filled: filled,
    border: borderDecoration ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h), 
        borderSide: BorderSide.none, 
        ),
    enabledBorder: borderDecoration ??
       OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h), 
        borderSide: BorderSide.none,
       ),
    focusedBorder: borderDecoration ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h), 
        borderSide: BorderSide.none,
        ),
      );
      }