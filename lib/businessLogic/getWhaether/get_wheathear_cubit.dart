import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheater/data/model.dart';

import '../../data/webSercives.dart';
import 'get_wheathear_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
   WheatherModel? wheatherModel;

  Future<WheatherModel?> getWheather({required String nameCity}) async {
    try {
      wheatherModel =
          (await WebServices(Dio()).getWheatherServices(cityName: nameCity))!;

      emit(WeatherLoadedState(wheatherModel!));
    } catch (e) {
      emit(WeatherFailerState());
    }
  }
}
