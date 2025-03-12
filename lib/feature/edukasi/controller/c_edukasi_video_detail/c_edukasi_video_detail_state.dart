import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/model/edukasi_video/edukasi_video.dart';

part 'c_edukasi_video_detail_state.freezed.dart';

@freezed
class CEdukasiVideoDetailState with _$CEdukasiVideoDetailState {
  const factory CEdukasiVideoDetailState({
    @Default(Status.initial()) Status status,
    @Default(0) num offset,
    @Default(10) num limit,
    @Default([]) List<EdukasiVideo> data,
    num? activeIndex,
  }) = _CEdukasiVideoDetailState;
}