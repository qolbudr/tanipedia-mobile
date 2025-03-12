import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tanipedia_mobile/core/database/db.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/feature/profile/controller/c_profile_main/c_profile_main_state.dart';
import 'package:tanipedia_mobile/repositories/r_auth/r_auth.dart';

class CProfileMain extends GetxController {
  static CProfileMain instance = Get.find();
  final Rx<CProfileMainState> _state = Rx<CProfileMainState>(const CProfileMainState());
  CProfileMainState get state => _state.value;

  final rAuth = Get.find<RIAuth>();
  final oMain = Get.find<CMain>();
  final db = Get.find<DatabaseHelper>();

  final formKey = GlobalKey<FormState>();
  final emailText = TextEditingController();
  final nameText = TextEditingController();
  final passwordText = TextEditingController();
  final phoneText = TextEditingController();
  final addressText = TextEditingController();

  void updateProfile() async {
    try {
      if (formKey.currentState?.validate() == true && state.photo != null) {
        _state.value = state.copyWith(status: const Status.loading());
        final response = await rAuth.updateProfile(name: nameText.text, email: emailText.text, password: passwordText.text, address: addressText.text, phone: phoneText.text, photo: state.photo);
        if (response.message != null) WSnackBar.showSnackBar(message: response.message!, type: WSnackBarType.success);
        oMain.setUserData(response.data, oMain.state.token);
        await db.deleteData();
        if (response.token != null) db.storeToken(oMain.state.token!);
        if (response.data != null) db.storeUser(response.data!);

        _state.value = state.copyWith(status: const Status.success());
      }
    } catch (e) {
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }

  void logout() async {
    await db.deleteData();
    AuthRoute.toLogin();
  }

  void onChangePhoto(XFile file) {
    _state.value = state.copyWith(photo: file);
  }
}
