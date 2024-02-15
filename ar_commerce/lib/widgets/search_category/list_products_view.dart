import 'package:flutter/material.dart';
import 'package:ar_commerce/models/category.dart';

class ListProductsView extends StatefulWidget {
  final Category category;

  const ListProductsView({Key? key, required this.category}) : super(key: key);

  @override
  State<ListProductsView> createState() => _ListProductsViewState();
}

class _ListProductsViewState extends State<ListProductsView> {
  @override
  Widget build(BuildContext context) {
    // Aquí puedes construir la pantalla de consulta de productos utilizando la categoría recibida
    // y realizar la consulta de los productos correspondientes a esta categoría.
    return Scaffold(
      appBar: AppBar(
        title: Text("Products in ${widget.category.name}"),
      ),
      body: Center(
        child: Text("Products in ${widget.category.name}"),
      ),
    );
  }
}
