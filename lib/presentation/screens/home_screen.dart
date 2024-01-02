import 'package:flutter/material.dart';
import 'package:project/core/mock_data/mock_data.dart';
import 'package:project/core/utils/app_sizes.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedProductCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        title: 'Eco-friendly collection',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.size_24w),
        child: Column(
          children: [
            _productCategoriesList(),
            _productList(),
          ],
        ),
      ),
    );
  }

  Widget _productCategoriesList() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.size_16h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProductCategoriesItem(
            index: 0,
            isSelected: 0 == _selectedProductCategoryIndex,
            title: 'All',
            onTap: () {
              _selectedProductCategoryIndex = 0;
              setState(() {});
            },
            tooltip: 'All',
          ),
          ProductCategoriesItem(
            index: 1,
            isSelected: 1 == _selectedProductCategoryIndex,
            iconData: Icons.chair,
            onTap: () {
              _selectedProductCategoryIndex = 1;
              setState(() {});
            },
            tooltip: 'Sofa',
          ),
          ProductCategoriesItem(
            index: 2,
            isSelected: 2 == _selectedProductCategoryIndex,
            iconData: Icons.table_bar,
            onTap: () {
              _selectedProductCategoryIndex = 2;
              setState(() {});
            },
            tooltip: 'Table',
          ),
          ProductCategoriesItem(
            index: 3,
            isSelected: 3 == _selectedProductCategoryIndex,
            iconData: Icons.light,
            onTap: () {
              _selectedProductCategoryIndex = 3;
              setState(() {});
            },
            tooltip: 'Lamp',
          ),
        ],
      ),
    );
  }

  Widget _productList() {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runSpacing: AppSizes.size_16h,
        children: productList
            .map((product) => ProductItem(
                  product: product,
                ))
            .toList(),
      ),
    );
  }
}
