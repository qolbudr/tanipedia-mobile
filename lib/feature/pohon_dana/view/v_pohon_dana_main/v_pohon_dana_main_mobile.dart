import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/controller/c_pohon_dana_main/c_pohon_dana_main.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/pohon_dana_route.dart';

class VPohonDanaMainMobile extends StatelessWidget {
  const VPohonDanaMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CPohonDanaMain());

    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Const.parentMargin()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Const.siblingMargin(x: 8)),
                WInput(
                  hintText: "Cari Pendanaan",
                  controller: o.searchText,
                  onChange: (value) => o.refreshController.requestRefresh(),
                  prefixIcon: const Icon(Icons.search),
                ),
                SizedBox(height: Const.siblingMargin(x: 4)),
                Text("${o.searchText.text.isNotEmpty ? o.state.data.length : o.state.count}+ Items", style: TText.subHeadingBold()),
                SizedBox(height: Const.siblingMargin(x: 4)),
                Expanded(
                  child: WRefresher(
                    controller: o.refreshController,
                    onLoading: () => o.onGetData(),
                    onRefresh: () => o.onGetData(),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: Const.parentMargin(),
                      crossAxisSpacing: Const.parentMargin(),
                      shrinkWrap: true,
                      children: [
                        ...o.state.data.map(
                          (item) => InkWell(
                            onTap: () =>  PohonDanaRoute.toDetail(id: item.id!),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                              width: double.infinity,
                              height: 300,
                              child: CachedNetworkImage(
                                imageUrl: "${Const.urlHost}/pohon-dana/${item.image}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
