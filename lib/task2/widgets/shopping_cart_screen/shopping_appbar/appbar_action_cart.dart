import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trauxit_task/task2/blocs/cart_bloc/cart_bloc.dart';
import 'package:trauxit_task/task2/models/product_model.dart';
import 'package:trauxit_task/task2/repositories/product_repository.dart';
import 'package:trauxit_task/task2/widgets/shared_widgets/product_item_widget.dart';

import '../../../utilities/colors.dart';

class AppbarActionCart extends StatelessWidget {
  const AppbarActionCart({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          barrierColor: App2Colors.thirdColor.withOpacity(.03),
          context: context,
          builder: (_) => BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              List<ProductModel> products = ProductRepository.cartProducts;
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductItemWidget(product: products[index]),
              );
            },
          ),
        );
      },
      icon: const Icon(
        Icons.shopping_cart,
        color: App2Colors.secondColor,
      ),
    );
  }
}
