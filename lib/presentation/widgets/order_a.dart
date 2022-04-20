import 'package:flutter/material.dart';

import '../resources/constend.dart';

class AccountOrderCard extends StatelessWidget {
  const AccountOrderCard({
    Key? key,
    required this.color,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  final String imageUrl;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 45.0,
              width: 45.0,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Image(
                image: AssetImage(imageUrl),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              text,
              style: kAccountOrderCardText,
            )
          ],
        )
      ],
    );
  }
}