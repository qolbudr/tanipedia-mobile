import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_pohon_dana/model/pohon_dana_model/pohon_dana_model.dart';

part 'c_pohon_dana_main_state.freezed.dart';

@freezed
class CPohonDanaMainState with _$CPohonDanaMainState {
  const factory CPohonDanaMainState({
    @Default(Status.initial()) Status status,
    @Default(0) num offset,
    @Default(10) num limit,
    @Default(0) num count,
    @Default([]) List<PohonDanaModel> data,
  }) = _CPohonDanaMainState;
}