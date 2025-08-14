import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weater_app/cubit/get_weather_states.dart';
import 'package:weater_app/models/weather_model.dart';
import 'package:weater_app/services/get_weather_dio.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);
  late WeatherModel weatherData;

  getWeather(String cityName) async {
    print("iside getweather cubit func");
    try {
      weatherData = await WeatherDioRequest(Dio()).getCityWeather(cityName);
      print("cubit $weatherData");
      emit(LoadedWeatherState());
    } catch (e) {
      print("cunbit error $e");
      emit(FailureWeatherState());
    }
  }
}
