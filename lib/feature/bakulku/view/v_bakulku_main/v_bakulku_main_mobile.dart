import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/gen/assets.gen.dart';

class VBakulkuMainMobile extends StatelessWidget {
  const VBakulkuMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final oMain = Get.put(CMain());

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff8CC63F),
                  Color(0xff75CC57),
                  Color(0xff43C747),
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(Const.parentMargin()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Const.siblingMargin(x: 4)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CachedNetworkImage(
                        imageUrl: "https://picsum.photos/200/300",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: Const.siblingMargin(x: 2)),
                    Text("Halo, ${oMain.state.user?.name}", style: TText.bodySemiBold(color: TColors.baseWhite)),
                    SizedBox(height: Const.siblingMargin(x: 2)),
                    Text("Temukan hasil pertanian", style: TText.heading2Bold()),
                    SizedBox(height: Const.siblingMargin(x: 8)),
                    const WInput(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Temukan produk...",
                    ),
                    SizedBox(height: Const.siblingMargin(x: 4)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: TColors.baseWhite,
            padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: TColors.primaryColor, width: 2)),
                      ),
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.buahCategory.image(),
                          SizedBox(height: Const.siblingMargin()),
                          Text("Buah", style: TText.bodyXSRegular(color: TColors.primaryColor)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.sayurCategory.image(),
                          SizedBox(height: Const.siblingMargin()),
                          Text("Sayur", style: TText.bodyXSRegular(color: TColors.primaryColor)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.bibitCategory.image(),
                          SizedBox(height: Const.siblingMargin()),
                          Text("Bibit", style: TText.bodyXSRegular(color: TColors.primaryColor)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.pupukCategory.image(),
                          SizedBox(height: Const.siblingMargin()),
                          Text("Pupuk", style: TText.bodyXSRegular(color: TColors.primaryColor)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(Const.parentMargin()),
              crossAxisCount: 2,
              mainAxisSpacing: Const.parentMargin(),
              crossAxisSpacing: Const.parentMargin(),
              shrinkWrap: true,
              children: [
                Container(color: Colors.red),
                Container(color: Colors.red),
                Container(color: Colors.red),
                Container(color: Colors.red),
                Container(color: Colors.red),
                Container(color: Colors.red),
                Container(color: Colors.red),
                Container(color: Colors.red),
              ],
            ),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
