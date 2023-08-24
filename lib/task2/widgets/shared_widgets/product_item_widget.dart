import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trauxit_task/task2/blocs/cart_bloc/cart_bloc.dart';
import 'package:trauxit_task/task2/models/product_model.dart';
import 'package:trauxit_task/task2/utilities/extensions.dart';

import '../../utilities/colors.dart';
import 'build_text.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel product;
  const ProductItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        dense: true,
        title: BuildText(
          text: product.name,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
          color: App2Colors.secondColor,
          height: 1,
        ),
        subtitle: BuildText(
          text: product.price,
          textAlign: TextAlign.start,
          color: App2Colors.thirdColor,
        ),
        leading: Image(
          image: AssetImage(
            "assets/images/${product.image}",
          ),
          fit: BoxFit.fill,
          width: .3.screenWidth(context),
        ),
        trailing: IconButton(
          onPressed: () {
            context.read<CartBloc>().add(CartChangeEvent(product));
          },
          icon: Icon(
            product.inCart
                ? Icons.remove_shopping_cart_sharp
                : Icons.shopping_cart,
            color: App2Colors.secondColor,
          ),
        ),
        //minLeadingWidth: .2.screenWidth(context),
      ),
    );
  }
}
