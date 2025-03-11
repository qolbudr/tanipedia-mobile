import 'package:freezed_annotation/freezed_annotation.dart';

part 'c_onboarding_state.freezed.dart';

@freezed
class COnBoardingState with _$COnBoardingState {
  const factory COnBoardingState({
    @Default(0) int tabIndex,
  }) = _COnBoardingState;
}