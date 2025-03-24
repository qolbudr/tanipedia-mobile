import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/validation.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
import 'package:tanipedia_mobile/feature/auth/controller/c_login/c_login.dart';

class VLoginMobile extends StatelessWidget {
  const VLoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CLogin());

    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Const.parentMargin()),
            child: Form(
              key: o.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Const.siblingMargin(x: 8)),
                  Text(
                    "Welcome\nBack!",
                    style: TText.headlineBold(color: TColors.primaryColor),
                  ),
                  SizedBox(height: Const.siblingMargin(x: 8)),
                  WInput(
                    controller: o.emailText,
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Username or Email",
                    validator: (value) => Validation.email(value, isRequired: true),
                  ),
                  SizedBox(height: Const.siblingMargin(x: 4)),
                  WInput(
                    controller: o.passwordText,
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Password",
                    obscureText: true,
                    validator: (value) => Validation.required(label: "Password", value: value),
                  ),
                  SizedBox(height: Const.siblingMargin(x: 4)),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     WButton(
                  //       onTap: () {},
                  //       type: WButtonType.textPrimary,
                  //       label: "Forgot Password",
                  //     )
                  //   ],
                  // ),
                  SizedBox(height: Const.siblingMargin(x: 8)),
                  WButton(
                    isLoading: o.state.status.isLoading,
                    fullWidth: true,
                    label: "Login",
                    onTap: () => o.login(),
                  ),
                  SizedBox(height: Const.siblingMargin(x: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(text: "Create An Account ", style: TText.bodySRegular(color: TColors.baseBlack), children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = AuthRoute.toRegister,
                            text: "Sign Up",
                            style: TText.bodySRegular(color: TColors.primaryColor).copyWith(decoration: TextDecoration.underline),
                          )
                        ]),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
