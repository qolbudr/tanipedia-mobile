import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_bakulku/model/product_model/product_model.dart';

part 'c_bakulku_detail_state.freezed.dart';

@freezed
class CBakulkuDetailState with _$CBakulkuDetailState {
  const factory CBakulkuDetailState({
    @Default(Status.initial()) Status status,
    ProductModel? data,
    @Default(0) num quantity,
  }) = _CBakulkuDetailState;
}