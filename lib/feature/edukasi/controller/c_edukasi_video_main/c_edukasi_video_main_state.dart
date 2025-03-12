import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/model/edukasi_video_category/edukasi_video_category.dart';

part 'c_edukasi_video_main_state.freezed.dart';

@freezed
class CEdukasiVideoMainState with _$CEdukasiVideoMainState {
  const factory CEdukasiVideoMainState({
    @Default(Status.initial()) Status status,
    @Default(0) num offset,
    @Default(10) num limit,
    @Default([]) List<EdukasiVideoCategory> data,
  }) = _CEdukasiVideoMainState;
}