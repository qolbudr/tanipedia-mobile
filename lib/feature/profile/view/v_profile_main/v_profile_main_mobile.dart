import 'package:flutter/material.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:tanipedia_mobile/core/utils/extension.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';

class VProfileMainMobile extends StatelessWidget {
  const VProfileMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(Const.parentMargin()),
          children: [
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
        ),
      ),
    );
  }
}
