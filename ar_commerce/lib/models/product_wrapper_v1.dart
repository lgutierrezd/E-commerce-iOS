import 'package:ar_commerce/models/product.dart';
import 'package:ar_commerce/models/product_config.dart';

class ProductWrapperV1 {
  Product product;
  Config config;

  ProductWrapperV1({
    required this.product,
    required this.config,
  });

  factory ProductWrapperV1.fromJson(Map<String, dynamic> json) {
    return ProductWrapperV1(
      product: Product.fromJson(json['product']),
      config: Config.fromJson(json['config']),
    );
  }
}
