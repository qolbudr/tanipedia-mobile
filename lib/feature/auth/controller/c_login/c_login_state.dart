import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
part 'c_login_state.freezed.dart';

@freezed
class CLoginState with _$CLoginState {
  const factory CLoginState({
    @Default(Status.initial()) Status status,
  }) = _CLoginState;
}