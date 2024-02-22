import 'package:ar_commerce/models/product_wrapper_v1.dart';
import 'package:ar_commerce/widgets/search_category/bloc/products_cubit.dart';
import 'package:ar_commerce/widgets/widgets/card_product_view.dart';
import 'package:flutter/material.dart';
import 'package:ar_commerce/models/category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListProductsView extends StatefulWidget {
  final Category category;

  const ListProductsView({Key? key, required this.category}) : super(key: key);

  @override
  State<ListProductsView> createState() => _ListProductsViewState();
}

class _ListProductsViewState extends State<ListProductsView> {
  ProductsCubit? _productsCubit;

  var page = 1;
  final limit = 10;

  @override
  void initState() {
    _productsCubit = ProductsCubit();
    _productsCubit?.fetchProductsByCategory(
        widget.category.id, page.toString(), limit.toString());
    super.initState();
  }

  void nextPreviousListProducts(bool next) {
    if (next) {
      page += 1;
    } else {
      if (page <= 0) {
        page = 1;
      } else {
        page -= 1;
      }
    }
    _productsCubit?.fetchProductsByCategory(
        widget.category.id, page.toString(), limit.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products in ${widget.category.name}"),
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<ProductsCubit, List<ProductWrapperV1>>(
              bloc: _productsCubit,
              builder: (context, products) {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // You can change this value as needed
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio:
                          0.75, // You can adjust this aspect ratio as needed
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return CardProductView(product: product);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
