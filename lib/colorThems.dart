import 'package:flutter/material.dart';

MaterialColor getColorTheme( String? condition) {
  if(condition == null)
    return Colors.blue;
  switch (condition.toLowerCase()) {
    case 'sunny':
      return Colors.orange;
    case 'partly cloudy':
      return Colors.yellow;
    case 'cloudy':
      return Colors.grey;
    case 'overcast':
      return Colors.blueGrey;
    case 'mist':
      return Colors.grey;
    case 'patchy rain possible':
      return Colors.lightBlue;
    case 'patchy snow possible':
      return Colors.lightBlue;
    case 'patchy sleet possible':
      return Colors.lightBlue;
    case 'patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'thundery outbreaks possible':
      return Colors.deepPurple;
    case 'blowing snow':
      return Colors.deepPurple;
    case 'blizzard':
      return Colors.deepPurple;
    case 'fog':
      return Colors.grey;
    case 'freezing fog':
      return Colors.grey;
    case 'patchy light drizzle':
      return Colors.lightBlue;
    case 'light drizzle':
      return Colors.lightBlue;
    case 'freezing drizzle':
      return Colors.lightBlue;
    case 'heavy freezing drizzle':
      return Colors.lightBlue;
    case 'patchy light rain':
      return Colors.lightBlue;
    case 'light rain':
      return Colors.lightBlue;
    case 'moderate rain at times':
      return Colors.lightBlue;
    case 'moderate rain':
      return Colors.lightBlue;
    case 'heavy rain at times':
      return Colors.indigo;
    case 'heavy rain':
      return Colors.indigo;
    case 'light freezing rain':
      return Colors.blue;
    case 'moderate or heavy freezing rain':
      return Colors.blue;
    case 'light sleet':
      return Colors.blue;
    case 'moderate or heavy sleet':
      return Colors.blue;
    case 'patchy light snow':
      return Colors.blue;
    case 'light snow':
      return Colors.blue;
    case 'patchy moderate snow':
      return Colors.blue;
    case 'moderate snow':
      return Colors.blue;
    case 'patchy heavy snow':
      return Colors.blue;
    case 'heavy snow':
      return Colors.blue;
    case 'ice pellets':
      return Colors.cyan;
    case 'light rain shower':
      return Colors.blue;
    case 'moderate or heavy rain shower':
      return Colors.indigo;
    case 'torrential rain shower':
      return Colors.indigo;
    case 'light sleet showers':
      return Colors.blue;
    case 'moderate or heavy sleet showers':
      return Colors.blue;
    case 'light snow showers':
      return Colors.blue;
    case 'moderate or heavy snow showers':
      return Colors.indigo;
    case 'light showers of ice pellets':
      return Colors.cyan;
    case 'moderate or heavy showers of ice pellets':
      return Colors.cyan;
    case 'patchy light rain with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'patchy light snow with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;

    default:
      return Colors.grey;
  }
}
