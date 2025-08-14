import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weater_app/cubit/get_weather_cubit.dart';
import 'package:weater_app/models/weather_model.dart';
import 'package:weater_app/services/get_weather_dio.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search a City")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              // label: Text("search"),
              hintText: "Enter City Name",
              labelText: "Search",
              suffixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
              contentPadding: EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
            ),

            onFieldSubmitted: (val) async {
              print("val submitted $val");
              await BlocProvider.of<GetWeatherCubit>(context).getWeather(val);
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
