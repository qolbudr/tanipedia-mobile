import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/edukasi/controller/c_edukasi_video_detail/c_edukasi_video_detail_state.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/r_edukasi.dart';

class CEdukasiVideoDetail extends GetxController {
  static CEdukasiVideoDetail instance = Get.find();
  late TabController tabController;
  final Rx<CEdukasiVideoDetailState> _state = Rx<CEdukasiVideoDetailState>(const CEdukasiVideoDetailState());
  CEdukasiVideoDetailState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rEdukasi = Get.find<RIEdukasi>();
  final categoryId = Get.arguments;
  final searchText = TextEditingController();

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      if(refreshController.isRefresh) _state.value = state.copyWith(offset: 0);
      final response = await rEdukasi.getVideos(limit: state.limit, offset: state.offset, search: searchText.text, categoryId: categoryId);
      if(refreshController.isLoading) _state.value = state.copyWith(data: [...state.data, ...(response.data ?? [])], offset: state.offset + (response.data?.length ?? 0));
      if(refreshController.isRefresh) _state.value = state.copyWith(data: response.data ?? [], offset: response.data?.length ?? 0);
      if(refreshController.isLoading && response.data?.isEmpty == true) return refreshController.loadNoData();
      _state.value = state.copyWith(status: const Status.success());
      if(refreshController.isLoading) return refreshController.loadComplete();
      if(refreshController.isRefresh) return refreshController.refreshCompleted();
    } catch (e) {
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }

  void onChooseVideo(num id) async {
    _state.value = state.copyWith(activeIndex: id);
  }
}