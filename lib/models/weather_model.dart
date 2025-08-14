class WeatherModel {
  const WeatherModel({
    required this.cityName,
    required this.date,
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    return WeatherModel(
      cityName: data['location']['name'],
      date: DateTime.parse(data['current']['last_updated']),
      image: data['current']['condition']['icon'],
      condition: data['current']['condition']['text'],
      temp: data['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: data['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: data['forecast']['forecastday'][0]['day']['mintemp_c'],
    );
  }
  final String cityName;
  final DateTime date;
  final String image;
  final String condition;
  final double temp, maxTemp, minTemp;
}
