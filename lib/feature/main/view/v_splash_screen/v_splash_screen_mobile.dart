import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_splash_screen/c_splash_screen.dart';

class VSplashScreenMobile extends StatelessWidget {
  const VSplashScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CSplashScreen());
    return Scaffold(
      backgroundColor: TColors.green50,
      body: SizedBox(
        width: double.infinity,
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  Image.asset('assets/images/tanipedia.png', width: 150),
                  SizedBox(height: Const.siblingMargin(x: 2)),
                  Text(
                    "Bondowoso Farming Empower",
                    style: TText.subHeadingBold(color: TColors.baseWhite),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: Const.siblingMargin(x: 2)),
                  Text("Find it here, now!", style: TText.bodySRegular(color: TColors.baseWhite)),
                  SizedBox(height: Const.siblingMargin(x: 4)),
                  WButton(
                    type: WButtonType.whiteGhost,
                    onTap: () {},
                    label: "Get Started",
                    fullWidth: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
