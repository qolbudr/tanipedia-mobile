import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';

enum WSnackBarType {
  info(backgroundColor: TColors.blue10, borderColor: TColors.blueMain),
  success(backgroundColor: TColors.green10, borderColor: TColors.greenMain),
  warning(backgroundColor: TColors.orange10, borderColor: TColors.orangeMain),
  danger(backgroundColor: TColors.red10, borderColor: TColors.redMain),
  ;

  const WSnackBarType({required this.borderColor, required this.backgroundColor});
  final Color borderColor;
  final Color backgroundColor;
}

class WSnackBar {
  static void showSnackBar({WSnackBarType type = WSnackBarType.info, required String message}) {
    Get.showSnackbar(GetSnackBar(
      isDismissible: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      animationDuration: const Duration(milliseconds: 300),
      duration: const Duration(milliseconds: 2500),
      margin: EdgeInsets.all(Const.siblingMargin(x: 4)),
      messageText: Text(message, style: TText.bodyXSRegular()),
      icon: Icon(
        type == WSnackBarType.success ? IconsaxPlusLinear.check : IconsaxPlusLinear.info_circle,
        color: type.borderColor,
      ),
      // message: "",
      backgroundColor: TColors.baseWhite,
      borderRadius: 8,
      borderColor: type.borderColor,
      borderWidth: 1,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.TOP,
    ));
  }
}
