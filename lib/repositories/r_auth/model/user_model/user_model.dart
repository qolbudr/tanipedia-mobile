import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/enums/role.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    num? id,
    String? email,
    String? password,
    String? name,
    String? phone,
    String? address,
    String? photo,
    ERole? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}