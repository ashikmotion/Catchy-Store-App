import 'package:flutter/material.dart';

import '../resources/constend.dart';

class MyCouponsCard extends StatelessWidget {
  const MyCouponsCard({
    Key? key,
    required this.mainChile,
    required this.onTab,
  }) : super(key: key);

  final Widget mainChile;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 100.0,
            decoration: kMyCouponsCartDecuration1,
            child: mainChile,
          ),
        ),
        Expanded(
          child: Container(
            height: 100.0,
            decoration: kMyCouponsCardDecuration2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 31.0),
              child: ElevatedButton(
                child: const Text(
                  'Use Now',
                  style: kMyCouponsCardButtonText,
                ),
                onPressed: () {
                  onTab();
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  primary: const Color(0xffF8EB64),
                  onPrimary: Colors.white,
                  minimumSize: const Size(30, 20.0),
                  animationDuration: const Duration(milliseconds: 200),
                  elevation: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}