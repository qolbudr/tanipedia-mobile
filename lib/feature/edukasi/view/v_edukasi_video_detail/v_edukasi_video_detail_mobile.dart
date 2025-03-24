import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/edukasi/controller/c_edukasi_video_detail/c_edukasi_video_detail.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VEdukasiVideoDetailMobile extends StatelessWidget {
  const VEdukasiVideoDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CEdukasiVideoDetail());

    return Obx(
      () => Scaffold(
        body: WRefresher(
          controller: o.refreshController,
          onLoading: () => o.onGetData(),
          onRefresh: () => o.onGetData(),
          child: ListView(
            padding: EdgeInsets.all(Const.parentMargin()),
            children: [
              if (o.state.status.isSuccess) ...[
                SizedBox(height: Const.parentMargin(x: 4)),
                if (o.state.activeIndex == null) ...[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withValues(alpha:0.5),
                    ),
                    child: const Center(
                      child: Icon(Icons.play_arrow, size: 50, color: TColors.baseWhite),
                    ),
                  ),
                ] else ...[
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    height: 200,
                    child: WebViewWidget(
                        controller: WebViewController()
                          ..setJavaScriptMode(JavaScriptMode.unrestricted)
                          ..loadRequest(Uri.parse(
                            "https://www.youtube.com/embed/${o.state.data.where((item) => item.id == o.state.activeIndex).firstOrNull?.link?.getYouTubeId()}",
                          ))
                        ),
                  )
                ],
                SizedBox(height: Const.parentMargin()),
              ],
              ...o.state.data.map(
                (item) => InkWell(
                  onTap: () => o.onChooseVideo(item.id!),
                  child: Container(
                    padding: EdgeInsets.all(Const.parentMargin()),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: o.state.activeIndex == item.id ? Border.all(color: TColors.primaryColor) : null,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
      ),
    );
  }
}
