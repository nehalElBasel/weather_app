import 'package:flutter/material.dart';
import 'package:weater_app/widgets/appbar_search_icon_button.dart';

class NoWeatherView extends StatelessWidget {
  const NoWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather"), actions: [SearchIconBtn()]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text("there is no weather please start searching now "),
        ),
      ),
    );
  }
}
