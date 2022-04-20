import 'package:flutter/material.dart';

import '../resources/constend.dart';
import '../widgets/discount.dart';

class TopProductsCard extends StatelessWidget {
  const TopProductsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 150.0,
        height: 250.0,
        decoration: kTopProductDecuration,
        child: Stack(
          children: [
            Column(
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
                    style: kTopProductTitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          '\$48.38',
                          style: kTopProductPrice,
                        ),
                      ),
                      Text(
                        '\$48.38',
                        style: kTopProductOldPrice,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star_purple500_outlined,
                        size: 18.0,
                        color: Color(0xffF88403),
                      ),
                      Text(
                        '4.5',
                        style: kTopProductStarNum,
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        '(328)',
                        style: kTopProductStarNumber,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                  child: Text(
                    '945 Sold',
                    style: kTopProductSoldNum,
                  ),
                )
              ],
            ),
            const DiscountText(),
          ],
        ),
      ),
    );
  }
}