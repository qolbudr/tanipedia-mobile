import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/auth/controller/c_login/c_login_state.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/feature/main/main_route.dart';
import 'package:tanipedia_mobile/repositories/r_auth/r_auth.dart';

class CLogin extends GetxController {
  static CLogin instance = Get.find();
  late TabController tabController;
  final Rx<CLoginState> _state = Rx<CLoginState>(const CLoginState());
  CLoginState get state => _state.value;

  final rAuth = Get.find<RIAuth>();
  final oMain = Get.find<CMain>();

  final formKey = GlobalKey<FormState>();
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  void login() async {
    try {
      if (formKey.currentState?.validate() == true) {
        _state.value = state.copyWith(status: const Status.loading());
        final response = await rAuth.login(email: emailText.text, password: passwordText.text);
        oMain.setUserData(response.data, response.token);
        MainRoute.toMain();
        _state.value = state.copyWith(status: const Status.success());
      }
    } catch (e) {
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }
}
