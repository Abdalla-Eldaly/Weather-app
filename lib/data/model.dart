import 'package:flutter/foundation.dart';

class WheatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final num temp;
  final num maxtemp;
  final num mintemp;
  final String wheatherCondation;
  WheatherModel(
      {required this.cityName,
      required this.date,
required this.temp,
        this.image,
      required this.maxtemp,
      required this.mintemp,
        required this.wheatherCondation
     });
  factory WheatherModel.fromjson(json){
    return WheatherModel
      (cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        wheatherCondation: json['forecast']['forecastday'][0]['day']['condition']['text']
    );
  }

}
