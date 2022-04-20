import 'package:flutter/material.dart';

class CouponCenterScreen extends StatelessWidget {
  const CouponCenterScreen({Key? key}) : super(key: key);

  static const String id = 'coupon_center-screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Coupon Center Screen'),
    ));
  }
}
