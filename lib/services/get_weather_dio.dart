import 'package:dio/dio.dart';
import 'package:weater_app/models/weather_model.dart';

class WeatherDioRequest {
  WeatherDioRequest(this.dio);
  final Dio dio;
  final String apikey = "7690aa59916747ec81d85201251408";
  final String baseUrl = "http://api.weatherapi.com/v1";

  Future<WeatherModel?> getCityWeather(String cityName) async {
    try {
      final response = await dio.get(
        '$baseUrl/forecast.json?key=$apikey&q=$cityName',
      );
      return WeatherModel.fromJson(response.data);
    } on DioException catch (error) {
      print(error);
      throw (error);
    }
  }
}
