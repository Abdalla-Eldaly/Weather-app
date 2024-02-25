import 'package:flutter/material.dart';
import 'package:wheater/constant/textStyle.dart';

import '../../constant/assets.dart';

class NoResultFound extends StatelessWidget {
  const NoResultFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            NoResultIcon,
            scale: 1.02,
            width: MediaQuery.of(context).size.width * .70,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(child: Text('No result',style: TextAppStyle.appText(),)),
      ],
    );
  }
}
