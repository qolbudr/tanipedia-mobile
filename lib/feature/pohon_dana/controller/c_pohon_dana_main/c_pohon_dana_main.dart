import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/controller/c_pohon_dana_main/c_pohon_dana_main_state.dart';
import 'package:tanipedia_mobile/repositories/r_pohon_dana/r_pohon_dana.dart';

class CPohonDanaMain extends GetxController {
  static CPohonDanaMain instance = Get.find();
  late TabController tabController;
  final Rx<CPohonDanaMainState> _state = Rx<CPohonDanaMainState>(const CPohonDanaMainState());
  CPohonDanaMainState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rPohonDana = Get.find<RIPohonDana>();

  final searchText = TextEditingController();

  void onGetData() async {
    try {
      if(refreshController.isRefresh) _state.value = state.copyWith(offset: 0);
      final response = await rPohonDana.getPohonDanas(limit: state.limit, offset: state.offset, search: searchText.text);
      if(refreshController.isLoading) _state.value = state.copyWith(data: [...state.data, ...(response.data ?? [])], offset: state.offset + (response.data?.length ?? 0), count: response.count ?? 0);
      if(refreshController.isRefresh) _state.value = state.copyWith(data: response.data ?? [], offset: response.data?.length ?? 0, count: response.count ?? 0);
      if(refreshController.isLoading && response.data?.isEmpty == true) return refreshController.loadNoData();
      if(refreshController.isLoading) return refreshController.loadComplete();
      if(refreshController.isRefresh) return refreshController.refreshCompleted();
    } catch (e) {
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }
}