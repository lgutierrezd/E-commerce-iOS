class Product {
  final String id;
  final String name;
  final bool isActive;
  final String category;
  final String brand;
  final List<String>? suppliers;
  final String slug;
  final List<ProductConfig> configs; // New property for configurations

  Product({
    required this.id,
    required this.name,
    required this.isActive,
    required this.category,
    required this.brand,
    required this.suppliers,
    required this.slug,
    required this.configs,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['product']['_id'],
      name: json['product']['name'],
      isActive: json['product']['isActive'],
      category: json['product']['category'],
      brand: json['product']['brand'],
      suppliers: json['product']['suppliers'] != null
          ? List<String>.from(json['product']['suppliers'])
          : [],
      slug: json['product']['slug'],
      configs: (json['config']['configs'] as List<dynamic>)
          .map((configJson) => ProductConfig.fromJson(configJson))
          .toList(),
    );
  }
}

class ProductConfig {
  final String id;
  final String colorHex;
  final List<String> images;
  final String productDescription;
  final double price;
  final double productionPrice;
  final bool isActive;

  ProductConfig({
    required this.id,
    required this.colorHex,
    required this.images,
    required this.productDescription,
    required this.price,
    required this.productionPrice,
    required this.isActive,
  });

  factory ProductConfig.fromJson(Map<String, dynamic> json) {
    return ProductConfig(
      id: json['_id'],
      colorHex: json['colorHex'],
      images: List<String>.from(json['images']),
      productDescription: json['productDescription'],
      price: json['price'].toDouble(),
      productionPrice: json['productionPrice'].toDouble(),
      isActive: json['isActive'],
    );
  }
}
