import 'package:ar_commerce/models/category.dart';
import 'package:ar_commerce/widgets/search_category/bloc/categories_cubit.dart';
import 'package:ar_commerce/widgets/search_category/list_products_view.dart';
import 'package:flutter/material.dart';
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
          return const Center(
            child: CircularProgressIndicator(),
          );
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
      return GestureDetector(
        onTap: () {
          navigateToProductScreen(category);
        },
        child: ListTile(
          title: Text(category.name),
        ),
      );
    } else {
      return ExpansionTile(
        title: Text(category.name),
        children: [
          BlocBuilder<CategoryCubit, List<Category>>(
            bloc: _categoryCubit,
            builder: (context, categories) {
              List<String> childs =
                  category.childs == null ? [] : category.childs!;
              final childrenCategories =
                  categories.where((child) => childs.contains(child.id));

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

  void navigateToProductScreen(Category category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListProductsView(category: category),
      ),
    );
  }
}
