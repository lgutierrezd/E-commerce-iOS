import 'package:ar_commerce/models/product.dart';
import 'package:ar_commerce/utils/http_request_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<Product> {
  final HttpRequestManager httpManager = HttpRequestManager();

  ProductCubit() : super(Product(id: '', name: '', slug: ''));

  Future<void> fetchProduct(String id) async {
    try {
      final responseData = await httpManager.request(
        method: HttpMethod.get,
        endpoint: 'api/v1/products/$id',
      );
      final Product product = Product.fromJson(
        responseData["data"]["data"],
      );
      emit(product);
    } catch (e, stackTrace) {
      onError(e, stackTrace);
    }
  }
}
