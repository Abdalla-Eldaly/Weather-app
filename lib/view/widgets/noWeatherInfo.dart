import 'package:flutter/material.dart';
import 'package:wheater/constant/textStyle.dart';

import '../../constant/assets.dart';
import '../../constant/strings.dart';

class HomeEmpty extends StatelessWidget {
  const HomeEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [



        Center(child: Column(
          children: [
            Image.asset(NoWeatherIcon,scale: 1.02,width: MediaQuery.of(context).size.width *.70,),
            SizedBox(height: 10,),
            Text(noWeather,style: TextAppStyle.appText(),),
          ],
        ))],
    );
  }
}
