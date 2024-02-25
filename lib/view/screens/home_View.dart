import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_cubit.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_state.dart';
import 'package:wheater/data/model.dart';
import 'package:wheater/view/widgets/search_View.dart';

import '../widgets/noResultWeather.dart';
import '../widgets/noWeatherInfo.dart';
import '../widgets/weatherInfo.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: CircleAvatar(
                child: Icon(
              Icons.sunny_snowing,
              size: 40,
              color: Colors.grey[700],
            ))),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Search.routeName);
              },
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey[700],
              ))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            print('2222222222222');
            return HomeEmpty();
          } else if (state is WeatherLoadedState) {
            print('3333333333333');

            return HomeInfo(
              weather: state.wheatherModel,
            );
          } else {
            return NoResultFound();
          }
        },
      ),
    );
  }
}
