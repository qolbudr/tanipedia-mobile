import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/bakulku/controller/c_bakulku_detail/c_bakulku_detail.dart';
import 'package:url_launcher/url_launcher.dart';

class VBakulkuDetailMobile extends StatelessWidget {
  const VBakulkuDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CBakulkuDetail());

    return Obx(
      () => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: WRefresher(
                controller: o.refreshController,
                onRefresh: () => o.onGetData(),
                child: o.state.status.isLoading
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
                            child: CachedNetworkImage(imageUrl: "${Const.urlHost}/product/${o.state.data?.image}", fit: BoxFit.cover),
                          ),
                          SizedBox(height: Const.siblingMargin(x: 4)),
                          Text("Cabai Ireng", style: TText.subHeadingBold()),
                          SizedBox(height: Const.siblingMargin(x: 4)),
                          Row(
                            children: [
                              InkWell(
                                onTap: o.decrease,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: TColors.primaryColor,
                                  ),
                                  child: Center(child: Text("-", style: TText.bodySBold(color: TColors.baseWhite))),
                                ),
                              ),
                              SizedBox(width: Const.siblingMargin(x: 2)),
                              Text("${o.state.quantity} Kg", style: TText.bodyMBold()),
                              SizedBox(width: Const.siblingMargin(x: 2)),
                              InkWell(
                                onTap: o.increase,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: TColors.primaryColor,
                                  ),
                                  child: Center(child: Text("+", style: TText.bodySBold(color: TColors.baseWhite))),
                                ),
                              ),
                              const Spacer(),
                              Text("${o.state.data?.price?.toCurrency()}/Kg", style: TText.bodyMBold()),
                            ],
                          ),
                          SizedBox(height: Const.siblingMargin(x: 4)),
                          HtmlWidget(o.state.data?.description ?? '-')
                        ],
                      ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Const.parentMargin()),
              child: WButton(
                onTap: () async {
                  await launchUrl(Uri.parse('https://wa.me/+62${o.state.data?.seller?.phone}&text=Halo saya ingin membeli ${o.state.data?.name} sebanyak ${o.state.quantity} ${o.state.data?.unit}'));
                },
                fullWidth: true,
                label: "Beli Sekarang",
              ),
            )
          ],
        ),
      ),
    );
  }
}
