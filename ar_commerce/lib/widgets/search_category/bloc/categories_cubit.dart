import 'package:ar_commerce/utils/http_request_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ar_commerce/models/category.dart';

class CategoryCubit extends Cubit<List<Category>> {
  final HttpRequestManager httpManager = HttpRequestManager();

  CategoryCubit() : super([]);

  Future<void> fetchCategories() async {
    try {
      final responseData = await httpManager.request(
        method: HttpMethod.get,
        endpoint: 'api/v1/categories?sort=-isMain',
      );
      final List<Category> categories = (responseData["data"]["data"] as List)
          .map((categoryJson) => Category.fromJson(categoryJson))
          .toList();
      emit(categories);
    } catch (e, stackTrace) {
      onError(e, stackTrace);
    }
  }
}
