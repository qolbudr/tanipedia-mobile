import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/controller/c_pohon_dana_detail/c_pohon_dana_detail_state.dart';
import 'package:tanipedia_mobile/repositories/r_pohon_dana/r_pohon_dana.dart';

class CPohonDanaDetail extends GetxController {
  static CPohonDanaDetail instance = Get.find();
  late TabController tabController;
  final Rx<CPohonDanaDetailState> _state = Rx<CPohonDanaDetailState>(const CPohonDanaDetailState());
  CPohonDanaDetailState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rPohonDana = Get.find<RIPohonDana>();
  final id = Get.arguments;

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      final response = await rPohonDana.getPohonDana(id: id);
      _state.value = state.copyWith(data: response.data, status: const Status.success());
      refreshController.refreshCompleted();
    } catch (e) {
      refreshController.refreshFailed();
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }
}