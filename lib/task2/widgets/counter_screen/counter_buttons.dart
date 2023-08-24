import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import 'counter_buttons/counter_text_button.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider = context.read<CounterProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CounterTextButton(
            onPressed: () {
              counterProvider.decreaseCounter();
            },
            icon: Icons.remove),
        CounterTextButton(
            onPressed: () {
              counterProvider.increaseCounter();
            },
            icon: Icons.add),
      ],
    );
  }
}
