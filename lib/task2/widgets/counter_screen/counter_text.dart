import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../../utilities/colors.dart';
import '../shared_widgets/build_text.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildText(
      text: context.watch<CounterProvider>().counter,
      color: App2Colors.secondColor,
      fontWeight: FontWeight.bold,
      fontSize: 40,
    );
  }
}
