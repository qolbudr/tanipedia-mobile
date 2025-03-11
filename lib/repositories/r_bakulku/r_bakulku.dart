import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/api/api.dart';
import 'package:tanipedia_mobile/core/enums/product_category.dart';
import 'package:tanipedia_mobile/core/errors/exception.dart';
import 'package:tanipedia_mobile/core/errors/failure.dart';
import 'package:tanipedia_mobile/core/models/main_response.dart';
import 'package:tanipedia_mobile/repositories/r_bakulku/model/product_model/product_model.dart';

abstract class RProduct {
  Future<MainResponse<List<ProductModel>>> getProducts({String? search, num? limit, num? offset, ProductCategory? category});
}

class RIProduct implements RProduct {
  final api = Get.find<IApi>();

  @override
  Future<MainResponse<List<ProductModel>>> getProducts({String? search, num? limit, num? offset, ProductCategory? category}) async {
    try {
      final response = await api.reqWithToken<MainResponse<List<ProductModel>>>(
        method: NetworkMethod.get,
        url: '/products',
        query: {
          'search': search,
          'category': category?.name,
          'limit': limit,
          'offset': offset,
        },
        fromJsonT: (json) => MainResponse.fromJson(json, (json['data'] as List).map((item) => ProductModel.fromJson(item)).toList()),
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
