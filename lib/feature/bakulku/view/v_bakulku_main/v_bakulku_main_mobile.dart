import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/enums/product_category.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/core/widget/w_refresher.dart';
import 'package:tanipedia_mobile/feature/bakulku/bakulku_route.dart';
import 'package:tanipedia_mobile/feature/bakulku/controller/c_bakulku_main/c_bakulku_main.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/gen/assets.gen.dart';

class VBakulkuMainMobile extends StatelessWidget {
  const VBakulkuMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final oMain = Get.put(CMain());
    final o = Get.put(CBakulkuMain());

    return Obx(
      () => Scaffold(
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
                          imageUrl: "${Const.urlHost}/avatar/${oMain.state.user?.photo}",
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
                      WInput(
                        controller: o.searchText,
                        onChange: (value) => o.refreshController.requestRefresh(),
                        prefixIcon: const Icon(Icons.search),
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
                      onTap: () => o.onChangeCategory(ProductCategory.buah),
                      child: Container(
                        decoration: (o.state.category == ProductCategory.buah) ? const BoxDecoration(
                          border: Border(bottom: BorderSide(color: TColors.primaryColor, width: 2)),
                        ) : null,
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
                      onTap: () => o.onChangeCategory(ProductCategory.sayur),
                      child: Container(
                        decoration: (o.state.category == ProductCategory.sayur) ? const BoxDecoration(
                          border: Border(bottom: BorderSide(color: TColors.primaryColor, width: 2)),
                        ) : null,
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
                      onTap: () => o.onChangeCategory(ProductCategory.bibit),
                      child: Container(
                        decoration: (o.state.category == ProductCategory.bibit) ? const BoxDecoration(
                          border: Border(bottom: BorderSide(color: TColors.primaryColor, width: 2)),
                        ) : null,
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
                      onTap: () => o.onChangeCategory(ProductCategory.pupuk),
                      child: Container(
                        decoration: (o.state.category == ProductCategory.pupuk) ? const BoxDecoration(
                          border: Border(bottom: BorderSide(color: TColors.primaryColor, width: 2)),
                        ) : null,
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
              child: WRefresher(
                controller: o.refreshController,
                onLoading: () => o.onGetData(),
                onRefresh: () => o.onGetData(),
                child: GridView.count(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3.2,
                  mainAxisSpacing: Const.parentMargin(),
                  crossAxisSpacing: Const.parentMargin(),
                  shrinkWrap: true,
                  children: [
                    ...o.state.data.map(
                      (item) => InkWell(
                        onTap: () => BakulkuRoute.toDetail(id: item.id ?? 0),
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                                  child: CachedNetworkImage(
                                    imageUrl: "${Const.urlHost}/product/${item.image}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(Const.parentMargin()),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.name ?? '-', style: TText.bodyMBold()),
                                  Row(
                                    children: [
                                      const Icon(Icons.map_outlined, size: 14),
                                      SizedBox(width: Const.siblingMargin()),
                                      Expanded(
                                        child: Text(
                                          item.seller?.address ?? '-',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TText.bodyXSRegular(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    item.description ?? '-',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TText.bodyXSRegular(color: TColors.primaryColor),
                                  ),
                                ],
                              ),
                            )
                          ],
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
    );
  }
}
