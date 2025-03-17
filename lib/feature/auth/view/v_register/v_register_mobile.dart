import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/utils/validation.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/core/widget/w_input_file.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
import 'package:tanipedia_mobile/feature/auth/controller/c_register/c_register.dart';

class VRegisterMobile extends StatelessWidget {
  const VRegisterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CRegister());

    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Form(
            key: o.formKey,
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
                  WInput(
                    controller: o.nameText,
                    hintText: "Name",
                    prefixIcon: const Icon(Icons.person),
                    validator: (p0) => Validation.required(value: p0, label: "Name"),
                  ),
                  WInput(
                    controller: o.emailText,
                    hintText: "Username or Email",
                    prefixIcon: const Icon(Icons.person),
                    validator: (p0) => Validation.email(p0, isRequired: true),
                  ),
                  WInput(
                    controller: o.passwordText,
                    withShowHide: true,
                    obscureText: true,
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    validator: (p0) => Validation.password(p0),
                  ),
                  WInput(
                    hintText: "Confirm Password",
                    prefixIcon: const Icon(Icons.lock),
                    withShowHide: true,
                    obscureText: true,
                    validator: (p0) => Validation.password(p0, confirmPassword: o.passwordText.text),
                  ),
                  WInput(
                    type: WInputType.phone,
                    controller: o.phoneText,
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
                  WInput(
                    hintText: "Address",
                    maxLines: 5,
                    controller: o.addressText,
                    validator: (p0) => Validation.required(value: p0, label: "Address"),
                  ),
                  WInputFile(onChange: o.onChangePhoto),
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
                  isLoading: o.state.status.isLoading,
                  fullWidth: true,
                  label: "Create Account",
                  onTap: () => o.register(),
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
        ),
      ),
    );
  }
}
