import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/enums/product_category.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_bakulku/model/product_model/product_model.dart';

part 'c_bakulku_main_state.freezed.dart';

@freezed
class CBakulkuMainState with _$CBakulkuMainState {
  const factory CBakulkuMainState({
    @Default(Status.initial()) Status status,
    @Default(0) num offset,
    @Default(10) num limit,
    @Default(ProductCategory.buah) ProductCategory category,
    @Default([]) List<ProductModel> data,
  }) = _CBakulkuMainState;
}