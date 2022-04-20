import 'package:flutter/material.dart';

import '../resources/constend.dart';

class RecentlyCard extends StatelessWidget {
  const RecentlyCard({
    Key? key,
    required this.onPress,
    required this.chile,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.favorite,
    required this.sopping,
    required this.favorieIcon,
    required this.soppingIcon,
  }) : super(key: key);

  final Function onPress;
  final Widget chile;
  final String imageUrl;
  final String productName;
  final String price;
  final Function favorite;
  final Function sopping;
  final Widget favorieIcon;
  final Widget soppingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 130.0,
      width: double.infinity,
      decoration: kRecentlyCartDecuration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 30.0,
            child: GestureDetector(
              onTap: () {
                onPress();
              },
              child: chile,
            ),
          ),
          Image(
            image: AssetImage(
              imageUrl,
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Text(
                productName,
                style: kRecentlyCartProductName,
              ),
              Text(
                price,
                style: kRecentlyCardPrice,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    favorite();
                  },
                  child: favorieIcon,
                ),
                const SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    sopping();
                  },
                  child: soppingIcon,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}