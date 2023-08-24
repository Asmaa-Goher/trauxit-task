import 'package:flutter/material.dart';
import 'package:trauxit_task/task2/utilities/extensions.dart';
import 'package:trauxit_task/task2/widgets/counter_screen/counter_text.dart';

import '../widgets/counter_screen/counter_buttons.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: SizedBox(
        height: .5.screenHeight(context),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CounterText(),
            CounterButtons(),
          ],
        ),
      ),
    );
  }
}
