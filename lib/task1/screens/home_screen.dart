import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/widgets/home_screen/home_appbar.dart';
import 'package:trauxit_task/task1/widgets/home_screen/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: const HomeBody(),
    );
  }
}
