import 'package:ar_commerce/models/category.dart';
import 'package:ar_commerce/utils/utils.dart';
import 'package:ar_commerce/widgets/search_category/bloc/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:ar_commerce/models/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchProductsView extends StatefulWidget {
  const SearchProductsView({Key? key}) : super(key: key);

  @override
  State<SearchProductsView> createState() => _SearchProductsViewState();
}

class _SearchProductsViewState extends State<SearchProductsView>
    with SingleTickerProviderStateMixin {
  final _categoryCubit = CategoryCubit();
  late TabController _tabController;
  @override
  void initState() {
    _categoryCubit.fetchCategories();
    _tabController = TabController(length: 9, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, List<Category>>(
      bloc: _categoryCubit,
      builder: (context, categories) {
        if (categories.isEmpty) {
          return const CircularProgressIndicator();
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Search Products"),
            ),
            body: ListView(
              children: categories
                  .where((category) => category.isMain)
                  .map(buildTile)
                  .toList(),
            ),
          );
        }
      },
    );
  }

  Widget buildTile(Category category, {int level = 0}) {
    if (category.childs?.isEmpty ?? false) {
      return ListTile(title: Text(category.name));
    } else {
      return ExpansionTile(
        title: Text(category.name),
        children: [
          BlocBuilder<CategoryCubit, List<Category>>(
            bloc: _categoryCubit,
            builder: (context, categories) {
              // Filtrar las categorías que son hijos de la categoría actual
              List<String> childs =
                  category.childs == null ? [] : category.childs!;
              final childrenCategories =
                  categories.where((child) => childs.contains(child.id));

              // Mapear las categorías filtradas a ExpansionTiles
              return Padding(
                padding: EdgeInsets.only(left: (level + 1) * 16.0),
                child: Column(
                  children: childrenCategories
                      .map((childCategory) =>
                          buildTile(childCategory, level: level + 1))
                      .toList(),
                ),
              );
            },
          ),
        ],
      );
    }
  }
}

class card_product_view_1 extends StatelessWidget {
  const card_product_view_1({
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
