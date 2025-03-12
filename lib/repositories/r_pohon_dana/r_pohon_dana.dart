import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/api/api.dart';
import 'package:tanipedia_mobile/core/errors/exception.dart';
import 'package:tanipedia_mobile/core/errors/failure.dart';
import 'package:tanipedia_mobile/core/models/main_response.dart';
import 'package:tanipedia_mobile/repositories/r_pohon_dana/model/pohon_dana_model/pohon_dana_model.dart';

abstract class RPohonDana {
  Future<MainResponse<List<PohonDanaModel>>> getPohonDanas({String? search, num? limit, num? offset});
  Future<MainResponse<PohonDanaModel>> getPohonDana({num? id});
}

class RIPohonDana implements RPohonDana {
  final api = Get.find<IApi>();

  @override
  Future<MainResponse<List<PohonDanaModel>>> getPohonDanas({String? search, num? limit, num? offset}) async {
    try {
      final response = await api.reqWithToken<MainResponse<List<PohonDanaModel>>>(
        method: NetworkMethod.get,
        url: '/pohon-danas',
        query: {
          'search': search,
          'offset': offset,
          'limit': limit,
        },
        fromJsonT: (json) => MainResponse.fromJson(json, (json['data'] as List).map((item) => PohonDanaModel.fromJson(item)).toList()),
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
  
  @override
  Future<MainResponse<PohonDanaModel>> getPohonDana({num? id}) async {
    try {
      final response = await api.reqWithToken<MainResponse<PohonDanaModel>>(
        method: NetworkMethod.get,
        url: '/pohon-dana/$id',
        fromJsonT: (json) => MainResponse.fromJson(json, PohonDanaModel.fromJson(json['data'])),
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
