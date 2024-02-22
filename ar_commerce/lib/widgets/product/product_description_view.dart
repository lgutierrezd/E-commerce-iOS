import 'package:ar_commerce/models/product_config.dart';
import 'package:ar_commerce/models/product_wrapper_v1.dart';
import 'package:ar_commerce/widgets/product/bloc/config_cubit.dart';
import 'package:ar_commerce/widgets/product/bloc/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDescriptionView extends StatefulWidget {
  final ProductWrapperV1 product;
  const ProductDescriptionView({Key? key, required this.product})
      : super(key: key);

  @override
  State<ProductDescriptionView> createState() => _ProductDescriptionViewState();
}

class _ProductDescriptionViewState extends State<ProductDescriptionView> {
  ProductCubit? _productCubit;
  ConfigCubit? _configCubit;

  @override
  void initState() {
    _productCubit = ProductCubit();
    _configCubit = ConfigCubit();
    _productCubit?.fetchProduct(widget.product.product.id);
    _configCubit?.fetchProductConfig(widget.product.product.id);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.product.name),
      ),
      body: Column(
        children: <Widget>[
          BlocBuilder<ConfigCubit, Config>(
            bloc: _configCubit,
            builder: (context, config) {
              return Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    padding: const EdgeInsets.only(bottom: 30),
                    width: double.infinity,
                    child: config.configs.isNotEmpty &&
                            config.configs.first.images.isNotEmpty
                        ? Image.network(
                            config.configs.first.images.first,
                            fit: BoxFit.cover,
                          )
                        : const Center(child: CircularProgressIndicator()),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
