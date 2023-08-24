import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  String get counter {
    return _counter.toString();
  }

  increaseCounter() {
    _counter++;
    notifyListeners();
  }

  decreaseCounter() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }
}
