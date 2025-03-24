import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/edukasi/controller/c_edukasi_video_main/c_edukasi_video_main.dart';
import 'package:tanipedia_mobile/feature/edukasi/edukasi_route.dart';

class VEdukasiVideoMainMobile extends StatelessWidget {
  const VEdukasiVideoMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CEdukasiVideoMain());

    return Obx(
      () => Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(Const.parentMargin()),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/header-img.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.yellow.withValues(alpha:0.3), BlendMode.lighten),
                ),
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Const.parentMargin(x: 4)),
                  Text("Edukasi", style: TText.heading2Bold()),
                  Text("Video Pembelajaran", style: TText.heading2Bold(color: TColors.baseWhite)),
                  WInput(
                    controller: o.searchText,
                    onChange: (p0) => o.refreshController.requestRefresh(),
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Temukan video pembelajaran",
                  ),
                  SizedBox(height: Const.parentMargin(x: 2)),
                ],
              ),
            ),
            Expanded(
              child: WRefresher(
                controller: o.refreshController,
                onLoading: () => o.onGetData(),
                onRefresh: () => o.onGetData(),
                child: ListView(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  children: [
                    ...o.state.data.map(
                      (item) => InkWell(
                        onTap: () => EdukasiRoute.toVideoDetail(categoryId: item.id),
                        child: Container(
                          padding: EdgeInsets.all(Const.parentMargin()),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item.title ?? '-', style: TText.bodySBold()),
                                    Text(item.description ?? '-', style: TText.bodyXSRegular()),
                                  ],
                                ),
                              ),
                              SizedBox(width: Const.siblingMargin(x: 2)),
                              const Icon(Icons.chevron_right_outlined),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
