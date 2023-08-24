import 'package:flutter/material.dart';
import 'package:trauxit_task/task2/widgets/shopping_cart_screen/products_listview.dart';

import '../widgets/shopping_cart_screen/shopping_appbar.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: shoppingAppBar(context),
      body: const ProductsListView(),
    );
  }
}
