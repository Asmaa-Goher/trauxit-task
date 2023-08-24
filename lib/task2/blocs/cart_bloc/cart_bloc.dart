import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartChangeEvent>(_changeProductCartState);
  }

  void _changeProductCartState(CartChangeEvent event, Emitter<CartState> emit) {
    event.productModel.inCart = !event.productModel.inCart;
    emit(CartChanged());
  }
}
