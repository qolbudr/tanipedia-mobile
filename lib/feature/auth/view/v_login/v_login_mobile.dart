import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_button.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
import 'package:tanipedia_mobile/feature/main/main_route.dart';

class VLoginMobile extends StatelessWidget {
  const VLoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Const.parentMargin()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Const.siblingMargin(x: 8)),
              Text(
                "Welcome\nBack!",
                style: TText.headlineBold(color: TColors.primaryColor),
              ),
              SizedBox(height: Const.siblingMargin(x: 8)),
              const WInput(
                prefixIcon: Icon(Icons.person),
                hintText: "Username or Email",
              ),
              SizedBox(height: Const.siblingMargin(x: 4)),
              const WInput(
                prefixIcon: Icon(Icons.lock),
                hintText: "Password",
                obscureText: true,
              ),
              SizedBox(height: Const.siblingMargin(x: 4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  WButton(
                    onTap: () {},
                    type: WButtonType.textPrimary,
                    label: "Forgot Password",
                  )
                ],
              ),
              SizedBox(height: Const.siblingMargin(x: 8)),
              WButton(
                fullWidth: true,
                label: "Login",
                onTap: () => MainRoute.toMain(),
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
                    text: TextSpan(
                      text: "Create An Account ",
                      style: TText.bodySRegular(color: TColors.baseBlack),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = AuthRoute.toRegister,
                          text: "Sign Up",
                          style: TText.bodySRegular(color: TColors.primaryColor).copyWith(decoration: TextDecoration.underline),
                        )
                      ]
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
