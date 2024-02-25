import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_cubit.dart';
import 'package:wheater/colorThems.dart';
import 'package:wheater/constant/textStyle.dart';
import 'package:wheater/data/model.dart';

import '../../constant/dmensions.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key, required this.weather});
  final WheatherModel weather;

  @override
  Widget build(BuildContext context) {
    var wheatherModel = BlocProvider.of<GetWeatherCubit>(context).wheatherModel;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        getColorTheme(wheatherModel?.wheatherCondation),
        getColorTheme(wheatherModel?.wheatherCondation)[300]!,
        getColorTheme(wheatherModel?.wheatherCondation)[50]!,
      ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInUp(
              duration: Duration(milliseconds: duration),
              animate: true,
              child: Text(
                wheatherModel!.cityName,
                style: TextAppStyle.citynameStyle(),
              ),
            ),
            FadeInUp(
              duration: const Duration(milliseconds: duration),
              animate: true,
              child: Text(
                'Last Updated at ${wheatherModel.date.hour} : ${wheatherModel.date.minute}',
                style: TextAppStyle.update(),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: duration),
              animate: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      child: Image.network('https:${wheatherModel.image}',width: 300,scale: 1.02,)),
                  Flexible(
                    child: Text(
                      '${wheatherModel.temp}',
                      style: TextAppStyle.avaTemp(),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          'Maxtemp: ${wheatherModel.maxtemp.round()}',
                          style: TextAppStyle.temp(),
                        ),
                        Text(
                          'Mintemp:  ${wheatherModel.mintemp.round()}',
                          style: TextAppStyle.temp(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: duration),
              child: Text(
                wheatherModel.wheatherCondation,
                style: TextAppStyle.citynameStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
