import 'package:flutter/material.dart';
import 'package:tanipedia_mobile/core/constant/const.dart';
import 'package:tanipedia_mobile/core/themes/text_theme.dart';
import 'package:tanipedia_mobile/core/widget/w_input.dart';

class VPohonDanaMainMobile extends StatelessWidget {
  const VPohonDanaMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Const.parentMargin()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Const.siblingMargin(x: 8)),
              const WInput(
                hintText: "Cari Pendanaan",
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(height: Const.siblingMargin(x: 4)),
              Text("52,082+ Items", style: TText.subHeadingBold()),
              SizedBox(height: Const.siblingMargin(x: 4)),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: Const.parentMargin(),
                  crossAxisSpacing: Const.parentMargin(),
                  shrinkWrap: true,
                  children: [
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                    Container(color: Colors.red),
                  ],
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
