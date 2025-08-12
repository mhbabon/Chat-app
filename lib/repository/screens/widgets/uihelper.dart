import 'package:flutter/material.dart';

import '../../../domain/constrains/appcolors.dart';

class UiHelper {
  static CustomImage({required String imageUrl}) {
    return Image.asset("assets/images/$imageUrl");
  }

  static CustomText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textDarkMode
                : AppColors.textLightMode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static CustomButton({
    required String buttonname,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 52,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonname,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "bold"
          ),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textInputType,
    required BuildContext context,
    Icon? icon,
  }) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.textFieldDarkMode
            : AppColors.textFieldLightMode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: text,
            prefixIcon: icon,
            hintStyle: TextStyle(color: Theme.of(context).brightness == Brightness.dark ? AppColors.hintTextDarkMode : AppColors.hintTextLightMode,fontSize: 14,),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
