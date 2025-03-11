import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/enums/product_category.dart';
import 'package:tanipedia_mobile/repositories/r_auth/model/user_model/user_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';  

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    num? id,
    String? name,
    String? description,
    String? image,
    num? price,
    String? unit,
    ProductCategory? category,
    UserModel? seller,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}