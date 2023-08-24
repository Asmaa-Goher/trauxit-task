import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trauxit_task/Task3/blocs/weather_bloc/weather_bloc.dart';
import 'package:trauxit_task/Task3/repositories/posts_repository.dart';
import 'package:trauxit_task/Task3/utilities/api_request.dart';
import 'package:trauxit_task/task1/screens/login_screen.dart';
import 'package:trauxit_task/task1/screens/tab_screen.dart';
import 'package:trauxit_task/task1/utilities/colors.dart';
import 'package:trauxit_task/task2/screens/counter_screen.dart';
import 'package:trauxit_task/task2/utilities/colors.dart';

import 'Task3/blocs/posts_bloc/posts_bloc.dart';
import 'Task3/screens/posts_screen.dart';
import 'Task3/screens/weather_screen.dart';
import 'Task3/utilities/colors.dart';
import 'task2/blocs/cart_bloc/cart_bloc.dart';
import 'task2/providers/counter_provider.dart';
import 'task2/screens/shopping_cart_screen.dart';

/// I just used three material apps as we can say they are three independent apps
/// and to be easier to switch between them
void main() {
  /// Task1
  //runApp(const Task1());
  /// Task2
  //runApp(const Task2());

  /// Task3
  runApp(const Task3());
}

/// Task1
class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
      ),

      /// Task 1 part 1
      home: const TabScreen(),

      /// Task 1 part 2
      //home: const LoginScreen(),
    );
  }
}

/// Task2
class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(),
        ),
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: App2Colors.mainDarkColor),
        ),

        /// Task 2 part 1
        home: const CounterScreen(),

        /// Task 2 part 2
        //home: const ShoppingCartScreen(),
      ),
    );
  }
}

/// Task3
class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostsBloc>(
          create: (context) => PostsBloc()..add(PostsLoadEvent()),
        ),
        BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: App3Colors.mainDarkColor),
        ),

        /// Task 3 part 1
        home: const PostsScreen(),

        /// Task 3 part 2
        //home: const WeatherScreen(),
      ),
    );
  }
}
