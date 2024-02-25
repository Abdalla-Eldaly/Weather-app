import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_cubit.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_state.dart';
import 'package:wheater/data/model.dart';
import 'package:wheater/view/widgets/search_View.dart';

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
        // backgroundColor: Colors.greenAccent,
        title: Text('Wheather App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Search.routeName);
              },
              icon: Icon(Icons.search))
        ],
      ),
      body:BlocBuilder<GetWeatherCubit,WeatherState>(
          builder: (context, state) {
            if(state is WeatherInitialState){
              print('2222222222222');
              return const HomeEmpty();

            }
            else if(state is WeatherLoadedState){
              print('3333333333333');

              return HomeInfo(weather: state.wheatherModel,);

            }
            else{
              return const Center(child: Text('No result'));

            }
          },

    ),);
  }
}



