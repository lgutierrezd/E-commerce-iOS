import 'package:ar_commerce/models/product_wrapper_v1.dart';
import 'package:ar_commerce/utils/utils.dart';
import 'package:ar_commerce/widgets/product/product_description_view.dart';
import 'package:flutter/material.dart';

class CardProductView extends StatelessWidget {
  const CardProductView({
    super.key,
    required this.product,
  });

  final ProductWrapperV1 product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                product.config.configs.first.images.first,
                fit: BoxFit.cover,
              ),
              Text(product.product.name),
              Text(
                "₡ ${Utils.formatPrice(product.config.configs.first.price)}",
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDescriptionView(product: product),
          ),
        );
      },
    );
  }
}
