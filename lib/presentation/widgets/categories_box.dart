import 'package:flutter/material.dart';

import '../resources/constend.dart';

class CategoriesBox extends StatelessWidget {
  const CategoriesBox({
    Key? key,
    required this.color,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  final Color color;
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(40.0),
              ),
            ),
            child: Image(
              image: AssetImage(imageUrl),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            text,
            style: kCategoriesBText,
          )
        ],
      ),
    );
  }
}
