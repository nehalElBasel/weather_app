import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weater_app/cubit/get_weather_cubit.dart';
import 'package:weater_app/models/weather_model.dart';
import 'package:weater_app/widgets/appbar_search_icon_button.dart';

class LoadedWeatherView extends StatelessWidget {
  const LoadedWeatherView({super.key});

  String checkImage(String image) {
    print("image");
    log(image);
    if (image.contains("https")) {
      return image;
    } else {
      return "https:$image";
    }
  }

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherData =
        BlocProvider.of<GetWeatherCubit>(context).weatherData;
    return Scaffold(
      appBar: AppBar(title: Text("Weather App"), actions: [SearchIconBtn()]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherData.cityName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          Text(
            "updated at ${weatherData.date.hour} : ${weatherData.date.minute}",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(checkImage(weatherData.image)),
              Text(
                weatherData.temp.round().toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Column(
                children: [
                  Text(
                    "maxTemp:${weatherData.maxTemp.round()}",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  Text(
                    "minTemp:${weatherData.minTemp.round()}",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50),
          Text(
            weatherData.condition,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
