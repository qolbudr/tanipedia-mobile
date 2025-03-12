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
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/feature/profile/controller/c_profile_main/c_profile_main.dart';

class VProfileMainMobile extends StatelessWidget {
  const VProfileMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final oMain = Get.put(CMain());
    final o = Get.put(CProfileMain());

    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Const.parentMargin()),
                child: Row(
                  children: [
                    IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
                    Text("Profil", style: TText.bodyBold()),
                  ],
                ),
              ),
              Form(
                key: o.formKey,
                child: Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(Const.parentMargin()),
                    children: [
                      WInput(
                        initialValue: oMain.state.user?.name,
                        controller: o.nameText,
                        hintText: "Name",
                        prefixIcon: const Icon(Icons.person),
                        validator: (p0) => Validation.required(value: p0, label: "Name"),
                      ),
                      WInput(
                        initialValue: oMain.state.user?.email,
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
                        initialValue: oMain.state.user?.phone,
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
                        initialValue: oMain.state.user?.address,
                        hintText: "Address",
                        maxLines: 5,
                        controller: o.addressText,
                        validator: (p0) => Validation.required(value: p0, label: "Address"),
                      ),
                      WInputFile(onChange: o.onChangePhoto),
                
                      SizedBox(height: Const.siblingMargin(x: 2)),
                      WButton(label: "Simpan", fullWidth: true, onTap: o.updateProfile, isLoading: o.state.status.isLoading),
                      WButton(label: "Keluar Akun", fullWidth: true, type: WButtonType.outlinePrimary, onTap: o.logout),
                    ].joinWidget(
                      SizedBox(height: Const.siblingMargin(x: 4)),
                    ),
                  ),
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
