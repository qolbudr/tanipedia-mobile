import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/edukasi/controller/c_edukasi_article_detail/c_edukasi_article_detail.dart';

class VEdukasiArticleDetailMobile extends StatelessWidget {
  const VEdukasiArticleDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CEdukasiArticleDetail());

    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Const.parentMargin()),
                child: Row(
                  children: [
                    IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
                    Text("Artikel", style: TText.bodyBold()),
                  ],
                ),
              ),
              Expanded(
                child: WRefresher(
                  controller: o.refreshController,
                  onRefresh: () => o.onGetData(),
                  child: ListView(
                    padding: EdgeInsets.all(Const.parentMargin()),
                    children: [
                      if (o.state.status.isSuccess || o.state.data != null) ...[
                        Text(o.state.data?.title ?? '-', style: TText.subHeadingBold(color: TColors.primaryColor), textAlign: TextAlign.center),
                        SizedBox(height: Const.siblingMargin(x: 2)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(imageUrl: "${Const.urlHost}/article/${o.state.data?.image}", width: double.infinity, height: 200, fit: BoxFit.cover),
                        ),
                        SizedBox(height: Const.siblingMargin(x: 2)),
                        HtmlWidget(o.state.data?.content ?? '-'),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
