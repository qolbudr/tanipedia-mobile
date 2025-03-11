import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/api/api.dart';
import 'package:tanipedia_mobile/core/errors/exception.dart';
import 'package:tanipedia_mobile/core/errors/failure.dart';
import 'package:tanipedia_mobile/core/models/main_response.dart';
import 'package:tanipedia_mobile/repositories/r_auth/model/user_model/user_model.dart';

abstract class RAuth {
  Future<MainResponse<UserModel>> login({String? email, String? password});
}

class RIAuth implements RAuth {
  final api = Get.find<IApi>();

  @override
  Future<MainResponse<UserModel>> login({String? email, String? password}) async {
    try {
      final response = await api.req<MainResponse<UserModel>>(
        method: NetworkMethod.post,
        url: '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
        fromJsonT: (json) => MainResponse.fromJson(json, UserModel.fromJson(json['data'])),
      );
      return response;
    } on ServerException catch (err) {
      throw ServerFailure(message: err.message ?? '');
    } on ClientException catch (err) {
      throw ClientFailure(message: err.message ?? '');
    } on ConnectionException catch (err) {
      throw ConnectionFailure(message: err.message ?? '');
    } catch (err) {
      throw ServerFailure(message: err.toString());
    }
  }
}