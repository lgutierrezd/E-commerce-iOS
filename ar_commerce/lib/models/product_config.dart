class ProductConfig {
  String id;
  String? colorHex;
  List<String> images;
  String? productDescription;
  double price;
  double? productionPrice;
  bool? isActive;

  ProductConfig({
    required this.id,
    this.colorHex,
    required this.images,
    this.productDescription,
    required this.price,
    this.productionPrice,
    this.isActive,
  });

  factory ProductConfig.fromJson(Map<String, dynamic> json) {
    return ProductConfig(
      id: json["_id"],
      colorHex: json['colorHex'],
      images: List<String>.from(json['images']),
      productDescription: json['productDescription'],
      price: json['price'].toDouble(),
      // ignore: prefer_null_aware_operators
      productionPrice: json['productionPrice'] != null
          ? json['productionPrice'].toDouble()
          : null,
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}

class Config {
  String id;
  List<ProductConfig> configs;
  Config({
    required this.id,
    required this.configs,
  });

  factory Config.fromJson(Map<String, dynamic> json) {
    // Handle nullable configs
    final List<dynamic>? configsData = json["configs"];
    List<ProductConfig> configs = [];
    if (configsData != null) {
      // Cast each element of configsData to ProductConfig
      configs = configsData
          .map((configJson) => ProductConfig.fromJson(configJson))
          .toList();
    }
    return Config(
      id: json["_id"],
      configs: configs,
    );
  }
}
