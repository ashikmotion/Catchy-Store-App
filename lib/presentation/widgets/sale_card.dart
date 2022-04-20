import 'package:flutter/material.dart';

import '../resources/constend.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({
    Key? key,
    required this.imageUrl,
    required this.oldPrice,
    required this.price,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String price;
  final String oldPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 150.0,
        height: 200.0,
        decoration: kSaleCDecuration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image(
                image: AssetImage(imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: kSaleCTitle,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: kSaleCPrice,
                  ),
                  Text(
                    oldPrice,
                    style: kSaleCOldPrice,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}