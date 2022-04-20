import 'package:flutter/material.dart';

import '../resources/constend.dart';

class ItemsTitles extends StatelessWidget {
  const ItemsTitles({
    Key? key,
    required this.onTab,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Text(
            title,
            style: kItemsTitleTitle,
          ),
          TextButton(
            onPressed: onTab(),
            child: Text(
              subTitle,
              style: kItemsTitleSubTitle,
            ),
          ),
        ],
      ),
    );
  }
}