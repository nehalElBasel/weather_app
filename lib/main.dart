import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weater_app/cubit/get_weather_cubit.dart';
import 'package:weater_app/cubit/get_weather_states.dart';
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
    return BlocProvider(
      create: (context) => GetWeatherCubit(InitialWeatherState()),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        debugShowCheckedModeBanner: false,
        title: 'Weather',
        home: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (ctx, state) {
            if (state is InitialWeatherState) {
              print("InitialWeatherState");
              return NoWeatherView();
            } else if (state is LoadedWeatherState) {
              // print("LoadedWeatherState");
              return LoadedWeatherView();
            } else {
              print("fauilar");
              return Text("error");
            }
          },
        ),
        routes: {
          "search": (ctx) => SearchView(),
          "loaded_weather": (ctx) => LoadedWeatherView(),
        },
      ),
    );
  }
}
