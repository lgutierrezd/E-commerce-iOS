import 'package:ar_commerce/models/product_config.dart';
import 'package:ar_commerce/utils/http_request_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigCubit extends Cubit<Config> {
  final HttpRequestManager httpManager = HttpRequestManager();

  ConfigCubit() : super(Config(id: '', configs: []));

  Future<void> fetchProductConfig(String id) async {
    try {
      final responseData = await httpManager.request(
        method: HttpMethod.get,
        endpoint: 'api/v1/products/config/$id',
      );
      final Config config = Config.fromJson(
        responseData["data"]["data"],
      );
      emit(config);
    } catch (e, stackTrace) {
      onError(e, stackTrace);
    }
  }
}
