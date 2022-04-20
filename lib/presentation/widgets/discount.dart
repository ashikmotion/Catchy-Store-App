import 'package:flutter/material.dart';

import '../resources/constend.dart';

class DiscountText extends StatelessWidget {
  const DiscountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10.0,
      child: Container(
        alignment: Alignment.center,
        height: 20.0,
        width: 33.0,
        decoration: kDiscountDecuration,
        child: const Text(
          '-65%',
          style: kDiscountText,
        ),
      ),
    );
  }
}