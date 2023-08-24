import 'package:flutter/material.dart';

import '../../utilities/images.dart';

class WeatherImage extends StatelessWidget {
  const WeatherImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/images/${AppImages.weatherImage}"));
  }
}
