import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tanipedia_mobile/core/models/status.dart';

part 'c_profile_main_state.freezed.dart';

@freezed
class CProfileMainState with _$CProfileMainState {
  const factory CProfileMainState({
    @Default(Status.initial()) Status status,
    XFile? photo,
  }) = _CProfileMainState;
}