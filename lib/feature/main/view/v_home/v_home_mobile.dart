import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/gen/assets.gen.dart';

class VHomeMobile extends StatelessWidget {
  const VHomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: Get.height * 0.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff8CC63F),
                      Color(0xff75CC57),
                      Color(0xff43C747),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: Const.siblingMargin(x: 8)),
                      Text("Farmer Revolution", style: TText.heading2Bold(color: TColors.baseWhite)),
                      Text("Connecting people to a Digital Green Revolution", style: TText.bodyXSBold()),
                      SizedBox(height: Const.siblingMargin(x: 2)),
                      Container(
                        margin: EdgeInsets.all(Const.parentMargin()),
                        padding: EdgeInsets.all(Const.parentMargin()),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: TColors.baseWhite.withOpacity(0.2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dapatkan Berbagai Informasi Seputar Agrikultural di Farmer.id Berkolaborasi, berbagi ilmu, dan baca cerita seputar komoditas  pertanian hanya di platform Farmer.id",
                              style: TText.bodyXSRegular(color: TColors.baseWhite),
                            ),
                            Row(
                              children: [
                                WButton(
                                  fullWidth: false,
                                  size: WButtonSize.xs,
                                  type: WButtonType.textPrimary,
                                  label: "Pelajari Selengkapnya",
                                  onTap: () {},
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: const Offset(0, -100),
            child: Padding(
              padding: EdgeInsets.all(Const.parentMargin()),
              child: Column(
                children: [
                  ...[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(Const.parentMargin()),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bakulku", style: TText.bodyBold(color: TColors.primaryColor)),
                                Text("Langsung dari petani lokal dengan kualitas terbaik", style: TText.bodyXSRegular()),
                                const Row(
                                  children: [
                                    WButton(
                                      size: WButtonSize.xs,
                                      label: "Jelajahi Sekarang",
                                    ),
                                  ],
                                )
                              ].joinWidget(
                                SizedBox(height: Const.siblingMargin(x: 2)),
                              ),
                            ),
                          ),
                          Assets.images.bakulku.image(),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(Const.parentMargin()),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Edukasi", style: TText.bodyBold(color: TColors.primaryColor)),
                                Text("Menyediakan panduan praktis untuk hasil pertanian secara optimal", style: TText.bodyXSRegular()),
                                const Row(
                                  children: [
                                    WButton(
                                      size: WButtonSize.xs,
                                      label: "Jelajahi Sekarang",
                                    ),
                                  ],
                                )
                              ].joinWidget(
                                SizedBox(height: Const.siblingMargin(x: 2)),
                              ),
                            ),
                          ),
                          Assets.images.edukasi.image(),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(Const.parentMargin()),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pohon Dana", style: TText.bodyBold(color: TColors.primaryColor)),
                                Text("Menyediakan informasi pendanaan untuk pertumbuhan agrikultur", style: TText.bodyXSRegular()),
                                const Row(
                                  children: [
                                    WButton(
                                      size: WButtonSize.xs,
                                      label: "Jelajahi Sekarang",
                                    ),
                                  ],
                                )
                              ].joinWidget(
                                SizedBox(height: Const.siblingMargin(x: 2)),
                              ),
                            ),
                          ),
                          Expanded(child: Assets.images.pohondana.image()),
                        ],
                      ),
                    ),
                  ].joinWidget(
                    SizedBox(height: Const.siblingMargin(x: 4)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
