import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/bakulku/controller/c_bakulku_detail/c_bakulku_detail_state.dart';
import 'package:tanipedia_mobile/repositories/r_bakulku/r_bakulku.dart';

class CBakulkuDetail extends GetxController {
  static CBakulkuDetail instance = Get.find();
  late TabController tabController;
  final Rx<CBakulkuDetailState> _state = Rx<CBakulkuDetailState>(const CBakulkuDetailState());
  CBakulkuDetailState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rProduct = Get.find<RIProduct>();
  final id = Get.arguments;

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      final response = await rProduct.getProduct(id: id);
      _state.value = state.copyWith(data: response.data, quantity: 1, status: const Status.success());
      refreshController.refreshCompleted();
    } catch (e) {
      refreshController.refreshFailed();
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }

  void increase() {
    _state.value = state.copyWith(quantity: state.quantity + 1);
  }

  void decrease() {
    if (state.quantity > 1) {
      _state.value = state.copyWith(quantity: state.quantity - 1);
    }
  }
}
