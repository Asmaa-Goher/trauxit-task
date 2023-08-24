import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trauxit_task/task2/widgets/shared_widgets/product_item_widget.dart';

import '../../blocs/cart_bloc/cart_bloc.dart';
import '../../models/product_model.dart';
import '../../repositories/product_repository.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        List<ProductModel> products = ProductRepository.products;
        return ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) => ProductItemWidget(product: products[index]),
        );
      },
    );
  }
}
