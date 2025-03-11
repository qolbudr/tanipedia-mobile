import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/feature/bakulku/view/v_bakulku_main/v_bakulku_main.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_main/v_edukasi_main.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/feature/main/view/v_home/v_home.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/view/v_pohon_dana_main/v_pohon_dana_main.dart';
import 'package:tanipedia_mobile/feature/profile/view/v_profile_main/v_profile_main.dart';
import 'package:tanipedia_mobile/gen/assets.gen.dart';

class VMainMobile extends StatelessWidget {
  const VMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CMain());

    return Scaffold(
      backgroundColor: TColors.neutral10,
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: TabBarView(
                  controller: o.tabController,
                  children: [
                    VHome(),
                    VBakulkuMain(),
                    VEdukasiMain(),
                    VPohonDanaMain(),
                    VProfileMain(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    onTap: () => o.tabController.animateTo(0),
                    child: SizedBox(
                      width: Const.parentMargin(x: 4),
                      height: 60,
                      child: Assets.images.homeNav.image(),
                    ),
                  ),
                  InkWell(
                    onTap: () => o.tabController.animateTo(1),
                    child: SizedBox(
                      width: Const.parentMargin(x: 4),
                      height: 60,
                      child: Assets.images.tokoNav.image(),
                    ),
                  ),
                  InkWell(
                    onTap: () => o.tabController.animateTo(2),
                    child: SizedBox(
                      width: Const.parentMargin(x: 4),
                      height: 60,
                      child: Assets.images.edukasiNav.image(),
                    ),
                  ),
                  InkWell(
                    onTap: () => o.tabController.animateTo(3),
                    child: SizedBox(
                      width: Const.parentMargin(x: 4),
                      height: 60,
                      child: Assets.images.pohondanaNav.image(),
                    ),
                  ),
                  InkWell(
                    onTap: () => o.tabController.animateTo(4),
                    child: SizedBox(
                      width: Const.parentMargin(x: 4),
                      height: 60,
                      child: Assets.images.provileNav.image(),
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
