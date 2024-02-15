import 'package:ar_commerce/models/product.dart';
import 'package:ar_commerce/utils/utils.dart';
import 'package:flutter/material.dart';

class CardProductView extends StatelessWidget {
  const CardProductView({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              product.configs.first.images.first,
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
            Text(product.name),
            Text(
              "₡ ${Utils.formatPrice(product.configs.first.price)}",
            ),
          ],
        ),
      ),
    );
  }
}
