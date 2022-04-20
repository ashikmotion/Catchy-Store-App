import 'package:flutter/material.dart';

import '../resources/constend.dart';

class NewProductsCard extends StatefulWidget {
  const NewProductsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  @override
  State<NewProductsCard> createState() => _NewProductsCardState();
}

class _NewProductsCardState extends State<NewProductsCard> {
  bool isBuy = false;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 270.0,
      decoration: kNewProductDecuration,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image(
                  width: double.infinity,
                  image: AssetImage(widget.imageUrl),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.title,
                  style: kNewProductTitle,
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
                        style: kNewProductPrice,
                      ),
                    ),
                    Text(
                      '\$48.38',
                      style: kNewProductOldPrice,
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
                      style: kNewProductStarNum,
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      '(328)',
                      style: kNewProductStarNumber,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '945 Sold',
                      style: kNewProductSold,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBuy = !isBuy;
                        });
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: isBuy == true
                            ? const Color(0xffF82D7F)
                            : const Color(0xff8482AC),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, right: 5.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Card(
                  elevation: 4.0,
                  shape: kNewProductcardBorder,
                  child: Container(
                    alignment: Alignment.center,
                    height: 29.0,
                    width: 29.0,
                    decoration: kNewProductCardDecuration,
                    child: Icon(
                      isFavorite == true
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 20.0,
                      color: isFavorite == true
                          ? const Color(0xffF82D7F)
                          : const Color(0xff49476E),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}