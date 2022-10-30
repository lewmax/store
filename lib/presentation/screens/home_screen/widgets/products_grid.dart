import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../domain/product/product.dart';
import 'product_widget.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> products;

  const ProductsGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: StaggeredGrid.count(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          axisDirection: AxisDirection.down,
          crossAxisCount: 2,
          children: products
              .map((product) => ProductWidget(product: product))
              .toList(),
        ),
      ),
    );
  }
}
