import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/controller/c_pohon_dana_detail/c_pohon_dana_detail.dart';
import 'package:url_launcher/url_launcher.dart';

class VPohonDanaDetailMobile extends StatelessWidget {
  const VPohonDanaDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CPohonDanaDetail());

    return Obx(
      () => Scaffold(
        body: WRefresher(
          controller: o.refreshController,
          onRefresh: () => o.onGetData(),
          child: !o.state.status.isSuccess
              ? const LinearProgressIndicator()
              : ListView(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  children: [
                    SizedBox(height: Const.parentMargin(x: 4)),
                    Container(
                      width: double.infinity,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CachedNetworkImage(imageUrl: "${Const.urlHost}/pohon-dana/${o.state.data?.image}", fit: BoxFit.cover),
                    ),
                    SizedBox(height: Const.siblingMargin(x: 4)),
                    Text(o.state.data?.title ?? '-', style: TText.subHeadingBold()),
                    SizedBox(height: Const.siblingMargin(x: 4)),
                    HtmlWidget(o.state.data?.description ?? '-'),
                    SizedBox(height: Const.siblingMargin(x: 4)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        WButton(
                          onTap: () async {
                            await launchUrl(Uri.parse(o.state.data!.link!));
                          },
                          size: WButtonSize.small,
                          label: "Informasi Lebih Lanjut",
                        )
                      ],
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
