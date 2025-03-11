import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tanipedia_mobile/core/models/status.dart';

part 'c_register_state.freezed.dart';

@freezed
class CRegisterState with _$CRegisterState {
  const factory CRegisterState({
    @Default(Status.initial()) Status status,
    XFile? photo,
  }) = _CRegisterState;
}