import 'package:flutter/material.dart';
import 'package:weater_app/views/loaded_weather_view.dart';
import 'package:weater_app/views/no_weather_view.dart';
import 'package:weater_app/views/search_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      home: const NoWeatherView(),
      routes: {
        "search": (ctx) => SearchView(),
        "loaded_weather": (ctx) => LoadedWeatherView(),
      },
    );
  }
}
