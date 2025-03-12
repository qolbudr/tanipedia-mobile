import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/api/api.dart';
import 'package:tanipedia_mobile/core/errors/exception.dart';
import 'package:tanipedia_mobile/core/errors/failure.dart';
import 'package:tanipedia_mobile/core/models/main_response.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/model/edukasi_video/edukasi_video.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/model/edukasi_video_category/edukasi_video_category.dart';

abstract class REdukasi {
  Future<MainResponse<List<EdukasiVideoCategory>>> getVideoCategories({String? search, num? limit, num? offset});
  Future<MainResponse<List<EdukasiVideo>>> getVideos({num? categoryId, String? search, num? limit, num? offset});
}

class RIEdukasi implements REdukasi {
  final api = Get.find<IApi>();

  @override
  Future<MainResponse<List<EdukasiVideoCategory>>> getVideoCategories({String? search, num? limit, num? offset}) async {
    try {
      final response = await api.reqWithToken<MainResponse<List<EdukasiVideoCategory>>>(
        method: NetworkMethod.get,
        url: '/video/categories',
        query: {
          'search': search,
          'limit': limit,
          'offset': offset,
        },
        fromJsonT: (json) => MainResponse.fromJson(json, (json['data'] as List).map((item) => EdukasiVideoCategory.fromJson(item)).toList()),
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
  Future<MainResponse<List<EdukasiVideo>>> getVideos({num? categoryId, String? search, num? limit, num? offset}) async {
    try {
      final response = await api.reqWithToken<MainResponse<List<EdukasiVideo>>>(
        method: NetworkMethod.get,
        url: '/videos',
        query: {
          'search': search,
          'limit': limit,
          'offset': offset,
        },
        fromJsonT: (json) => MainResponse.fromJson(json, (json['data'] as List).map((item) => EdukasiVideo.fromJson(item)).toList()),
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
