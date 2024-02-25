import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/businessLogic/getWhaether/get_wheathear_cubit.dart';
import 'package:wheater/view/screens/home_View.dart';
import 'package:wheater/view/screens/spalsh_View.dart';
import 'package:wheater/view/widgets/search_View.dart';

import 'colorThems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              HomeScreen.routeName: (_) => HomeScreen(),
              Search.routeName: (_) => Search(),
              SplashScreen.routeName:(_)=>SplashScreen()
            },
            initialRoute: SplashScreen.routeName,
            title: 'Weather',

            theme: ThemeData(
              appBarTheme:AppBarTheme(shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))) ,
              primarySwatch: getColorTheme(
                BlocProvider.of<GetWeatherCubit>(context).wheatherModel?.wheatherCondation,
              ),

            ),
          );
        }
      ),
    );
  }
}
