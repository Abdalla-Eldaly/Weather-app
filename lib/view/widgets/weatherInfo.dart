import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_cubit.dart';
import 'package:wheater/colorThems.dart';
import 'package:wheater/data/model.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key, required this.weather});
  final WheatherModel weather;

  @override
  Widget build(BuildContext context) {
    var wheatherModel = BlocProvider.of<GetWeatherCubit>(context).wheatherModel;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                getColorTheme(wheatherModel?.wheatherCondation),
                getColorTheme(wheatherModel?.wheatherCondation)[300]!,
                getColorTheme(wheatherModel?.wheatherCondation)[50]!,

              ],begin: Alignment.topCenter,end: Alignment.bottomLeft)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              wheatherModel!.cityName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'Last Updated : ${wheatherModel.date.hour} : ${wheatherModel.date.minute}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(child: Image.network('https:${wheatherModel.image}')),
                Flexible(
                  child: Text(
                    '${wheatherModel.temp}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        'Maxtemp: ${wheatherModel.maxtemp.round()}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Mintemp:  ${wheatherModel.mintemp.round()}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              wheatherModel.wheatherCondation,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
