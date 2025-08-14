import 'package:flutter/material.dart';

class LoadedWeatherView extends StatelessWidget {
  const LoadedWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Alexandria",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          Text(
            "updated at 23:46",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/cloudy.png"),
              Text(
                "17",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Column(
                children: [
                  Text(
                    "maxTemp:17",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  Text(
                    "minTemp:10",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50),
          Text(
            "Light Rain",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
