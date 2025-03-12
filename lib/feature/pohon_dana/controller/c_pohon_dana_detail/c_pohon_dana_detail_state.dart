import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_pohon_dana/model/pohon_dana_model/pohon_dana_model.dart';

part 'c_pohon_dana_detail_state.freezed.dart';

@freezed
class CPohonDanaDetailState with _$CPohonDanaDetailState {
  const factory CPohonDanaDetailState({
    @Default(Status.initial()) Status status,
    PohonDanaModel? data,
  }) = _CPohonDanaDetailState;
}