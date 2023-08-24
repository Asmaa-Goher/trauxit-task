part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartChangeEvent extends CartEvent {
  final ProductModel productModel;

  CartChangeEvent(this.productModel);
}
