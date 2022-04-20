import 'package:flutter/material.dart';

import '../resources/constend.dart';

class SocileButton extends StatelessWidget {
  const SocileButton({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 45.0,
        width: 45.0,
        decoration: kSocileButtonDecuration,
        child: Icon(
          icon,
          size: 18.0,
          color: color,
        ),
      ),
    );
  }
}