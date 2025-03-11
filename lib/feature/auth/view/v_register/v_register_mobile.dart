import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';

class VRegisterMobile extends StatelessWidget {
  const VRegisterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(Const.parentMargin()),
          children: [
            SizedBox(height: Const.siblingMargin(x: 8)),
            Text(
              "Create an\naccount",
              style: TText.headlineBold(color: TColors.primaryColor),
            ),
            SizedBox(height: Const.siblingMargin(x: 8)),
            ...[
              const WInput(
                hintText: "Username or Email",
                prefixIcon: Icon(Icons.person),
              ),
              const WInput(
                withShowHide: true,
                obscureText: true,
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
              const WInput(
                hintText: "Confirm Password",
                prefixIcon: Icon(Icons.lock),
                withShowHide: true,
                obscureText: true,
              ),
              WInput(
                type: WInputType.phone,
                hintText: "Phone",
                prefixIcon: Container(
                  width: 45,
                  margin: const EdgeInsets.only(top: 2, left: 2, right: 10, bottom: 2),
                  decoration: const BoxDecoration(
                    color: TColors.neutral10,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                  ),
                  child: const Center(child: Text("+62")),
                ),
              ),
              const WInput(
                hintText: "Address",
                maxLines: 5,
              ),
            ].joinWidget(
              SizedBox(height: Const.siblingMargin(x: 4)),
            ),
            SizedBox(height: Const.siblingMargin(x: 4)),
            RichText(
              text: TextSpan(
                text: "By clicking the ",
                style: TText.bodySRegular(color: TColors.baseBlack),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = AuthRoute.toLogin,
                    text: "Register ",
                    style: TText.bodySRegular(color: TColors.primaryColor).copyWith(decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = AuthRoute.toLogin,
                    text: "button, you agree to the public offer",
                    style: TText.bodySRegular(color: TColors.baseBlack),
                  )
                ],
              ),
            ),
            SizedBox(height: Const.siblingMargin(x: 8)),
            WButton(
              fullWidth: true,
              label: "Create Account",
              onTap: () {},
            ),
            SizedBox(height: Const.siblingMargin(x: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("- OR Continue with -", style: TText.bodySRegular()),
              ],
            ),
            SizedBox(height: Const.siblingMargin(x: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: TColors.neutral30,
                    ),
                  ),
                  child: Image.asset('assets/images/google.png'),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: TColors.neutral30,
                    ),
                  ),
                  child: Image.asset('assets/images/apple.png'),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: TColors.neutral30,
                    ),
                  ),
                  child: Image.asset('assets/images/facebook.png'),
                )
              ].joinWidget(
                SizedBox(
                  width: Const.siblingMargin(x: 4),
                ),
              ),
            ),
            SizedBox(height: Const.siblingMargin(x: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(text: "I Already Have an Account ", style: TText.bodySRegular(color: TColors.baseBlack), children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = Get.back,
                      text: "Login",
                      style: TText.bodySRegular(color: TColors.primaryColor).copyWith(decoration: TextDecoration.underline),
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(height: Const.siblingMargin(x: 8)),
          ],
        ),
      ),
    );
  }
}
