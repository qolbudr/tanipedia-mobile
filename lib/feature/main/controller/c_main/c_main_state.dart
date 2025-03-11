// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'c_main_state.freezed.dart';

@freezed
class CMainState with _$CMainState {
  const factory CMainState({
    @Default(0) int tabIndex,
  }) = _CMainState;
}