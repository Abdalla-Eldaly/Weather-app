import 'package:wheater/data/model.dart';

abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WheatherModel wheatherModel;
  WeatherLoadedState(this.wheatherModel);
}

class WeatherFailerState extends WeatherState {}
