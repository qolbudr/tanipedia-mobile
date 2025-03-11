import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_onboarding/c_onboarding.dart';

class VOnboardingMobile extends StatelessWidget {
  const VOnboardingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(COnBoarding());

    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Const.siblingMargin(x: 4)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    WButton(
                      onTap: () => AuthRoute.toLogin(),
                      type: WButtonType.textPrimary,
                      label: "Skip",
                    ),
                  ],
                ),
                SizedBox(height: Const.siblingMargin(x: 12)),
                Text("Farmer.id", style: TText.headlineBold(color: TColors.primaryColor)),
                SizedBox(height: Const.siblingMargin(x: 8)),
                SizedBox(
                  height: 400,
                  child: TabBarView(
                    controller: o.tabController,
                    children: [
                      ...o.items.map(
                        (item) => Column(
                          children: [
                            Text(
                              item.description,
                              style: TText.bodyMMedium(),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: Const.siblingMargin(x: 8)),
                            Image.asset(
                              item.image,
                              width: 250,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      5,
                      (item) => Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: o.state.tabIndex == item ? TColors.primaryColor : TColors.neutral30,
                        ),
                      ),
                    ),
                  ].joinWidget(
                    SizedBox(
                      width: Const.siblingMargin(x: 1.5),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WButton(
                      type: WButtonType.textPrimary,
                      label: "Prev",
                      onTap: () => o.tabController.animateTo(o.state.tabIndex - 1),
                    ),
                    WButton(
                      type: WButtonType.textPrimary,
                      label: "Next",
                      onTap: () {
                        if (o.state.tabIndex < 4) {
                          o.tabController.animateTo(o.state.tabIndex + 1);
                        } else {
                          AuthRoute.toLogin();
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
