import 'package:flutter/cupertino.dart';

class Weather extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WeatherState();
  }

}

class WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text('Weather'),
    );
  }

}