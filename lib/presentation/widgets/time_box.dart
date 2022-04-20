import 'package:flutter/material.dart';

import '../resources/constend.dart';

class TimeBox extends StatelessWidget {
  const TimeBox({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 22.0,
      width: 30.0,
      decoration: kTimeBoxDecuration,
      child: Text(
        text,
        style: kTimeBoxText,
      ),
    );
  }
}