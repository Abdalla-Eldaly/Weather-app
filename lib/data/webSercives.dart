 import 'package:dio/dio.dart';
 import 'package:wheater/data/model.dart';

 class WebServices{
   final Dio dio;
   WebServices(this.dio);
   final String baseUrl='http://api.weatherapi.com/v1';
   final String apiKey='9208cbea6a63427881e15554242202';
   Future <WheatherModel?> getWheatherServices ({required String cityName})async{
     try{

       Response response =await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

       WheatherModel wheatherModel = WheatherModel.fromjson(response.data);
       print(wheatherModel);

       return wheatherModel;

     }on DioException catch(e)
     {
       print('444444444444');

       final String errorMessage = e.response?.data['error']['message']??"opps there is error try later";
       throw Exception(errorMessage);

     }

   }


 }
