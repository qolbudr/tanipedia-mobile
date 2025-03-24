import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/feature/edukasi/edukasi_route.dart';
import 'package:tanipedia_mobile/gen/assets.gen.dart';

class VEdukasiMainMobile extends StatelessWidget {
  const VEdukasiMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.padi.image(
            width: double.infinity,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(Const.parentMargin()),
            width: double.infinity,
            height: Get.height,
            color: TColors.baseBlack.withValues(alpha:0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jelajahi Ilmu Pertanian dengan Mudah!",
                  style: TText.headlineBold(color: TColors.baseWhite),
                ),
                SizedBox(height: Const.siblingMargin(x: 10)),
                WButton(
                  type: WButtonType.whiteGhost,
                  onTap: () => EdukasiRoute.toVideo(),
                  fullWidth: true,
                  label: "Video Pembelajaran",
                ),
                SizedBox(height: Const.parentMargin()),
                WButton(
                  type: WButtonType.whiteGhost,
                  onTap: () => EdukasiRoute.toArticle(),
                  fullWidth: true,
                  label: "Artikel Tumbuhan",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
