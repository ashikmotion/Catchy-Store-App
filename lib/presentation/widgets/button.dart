import 'package:flutter/material.dart';

import '../resources/constend.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onTab,
    required this.text,
  }) : super(key: key);

  final String text;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text(
          text,
          style: kButtonText,
        ),
        onPressed: () {
          onTab();
        },
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          primary: const Color(0xffF82D7F),
          onPrimary: Colors.white,
          minimumSize: const Size(330, 45),
          animationDuration: const Duration(milliseconds: 200),
          elevation: 0,
        ),
      ),
    );
  }
}