import 'package:ar_commerce/models/product_wrapper_v1.dart';
import 'package:ar_commerce/utils/http_request_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCubit extends Cubit<List<ProductWrapperV1>> {
  final HttpRequestManager httpManager = HttpRequestManager();

  ProductsCubit() : super([]);

  Future<void> fetchProductsByCategory(
      String id, String page, String limit) async {
    try {
      final responseData = await httpManager.request(
        method: HttpMethod.get,
        endpoint: 'api/v1/products/category/$id?page=$page&limit=$limit',
      );
      final List<ProductWrapperV1> products =
          (responseData["data"]["data"] as List)
              .map((productJson) => ProductWrapperV1.fromJson(productJson))
              .toList();
      emit(products);
    } catch (e, stackTrace) {
      onError(e, stackTrace);
    }
  }
}
