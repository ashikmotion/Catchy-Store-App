import 'package:flutter/material.dart';

import '../resources/constend.dart';

class AccountHeaderItems extends StatelessWidget {
  const AccountHeaderItems({
    Key? key,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: kAccountHeaderTitle,
        ),
        Text(
          subTitle,
          style: kAccountHeaderSubTitle,
        ),
      ],
    );
  }
}