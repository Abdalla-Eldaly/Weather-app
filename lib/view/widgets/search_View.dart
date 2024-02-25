import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_cubit.dart';
import 'package:wheater/colorThems.dart';
import 'package:wheater/data/model.dart';
import 'package:wheater/data/webSercives.dart';

class Search extends StatelessWidget {
  static String routeName = 'search';
  Search({super.key});
  WheatherModel? wheatherModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: TextField(
              controller: _controller,
              cursorColor: Colors.grey,
              onSubmitted: (value) async {
                var getWeather = BlocProvider.of<GetWeatherCubit>(context);
                getWeather.getWheather(nameCity: value);

                Navigator.pop(context);
              },
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      var getWeather =
                          BlocProvider.of<GetWeatherCubit>(context);
                      getWeather.getWheather(nameCity: _controller.text);

                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.search),
                  ),
                  hintText: 'enter city name',
                  labelText: 'city name',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          )
        ],
      ),
    );
  }

  final TextEditingController _controller = TextEditingController();
}
