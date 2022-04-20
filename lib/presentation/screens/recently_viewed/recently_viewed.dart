import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/constend.dart';
import '../../widgets/recently_card.dart';

class RecentlyViewedScreen extends StatefulWidget {
  const RecentlyViewedScreen({Key? key}) : super(key: key);

  static const String id = 'recently_viewed-screen';

  @override
  State<RecentlyViewedScreen> createState() => _RecentlyViewedScreenState();
}

class _RecentlyViewedScreenState extends State<RecentlyViewedScreen> {
  bool isChack1 = false;
  bool isFavorite1 = false;
  bool isSopping1 = false;
  bool isChack2 = false;
  bool isFavorite2 = false;
  bool isSopping2 = false;
  bool isChack3 = false;
  bool isFavorite3 = false;
  bool isSopping3 = false;
  bool isChack4 = false;
  bool isFavorite4 = false;
  bool isSopping4 = false;
  bool isChack5 = false;
  bool isFavorite5 = false;
  bool isSopping5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: const Text(
          'Recently Viewed',
          style: kRecentlyViewedAppBarText,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff8482AC),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xff8482AC),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Jan 04, 2022',
                    style: kRecentlyDateText,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              RecentlyCard(
                onPress: () {
                  setState(() {
                    isChack1 = !isChack1;
                  });
                },
                favorite: () {
                  setState(() {
                    isFavorite1 = !isFavorite1;
                  });
                },
                sopping: () {
                  setState(() {
                    isSopping1 = !isSopping1;
                  });
                },
                chile: isChack1 == true
                    ? const Icon(
                        Icons.check_circle,
                        size: 20.0,
                        color: Color(0xff00BB45),
                      )
                    : const Icon(
                        FontAwesomeIcons.circle,
                        size: 20.0,
                        color: Color(0xffD5D5D5),
                      ),
                favorieIcon: isFavorite1 == true
                    ? const Icon(
                        Icons.favorite,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                soppingIcon: isSopping1 == true
                    ? const Icon(
                        Icons.shopping_cart_rounded,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                imageUrl: 'assets/ImgReview1.png',
                productName: 'Wooden char with love',
                price: '\$48.30',
              ),
              const SizedBox(height: 10.0),
              RecentlyCard(
                onPress: () {
                  setState(() {
                    isChack2 = !isChack2;
                  });
                },
                favorite: () {
                  setState(() {
                    isFavorite2 = !isFavorite2;
                  });
                },
                sopping: () {
                  setState(() {
                    isSopping2 = !isSopping2;
                  });
                },
                chile: isChack2 == true
                    ? const Icon(
                        Icons.check_circle,
                        size: 20.0,
                        color: Color(0xff00BB45),
                      )
                    : const Icon(
                        FontAwesomeIcons.circle,
                        size: 20.0,
                        color: Color(0xffD5D5D5),
                      ),
                favorieIcon: isFavorite2 == true
                    ? const Icon(
                        Icons.favorite,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                soppingIcon: isSopping2 == true
                    ? const Icon(
                        Icons.shopping_cart_rounded,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                imageUrl: 'assets/ImgReview2.png',
                productName: 'Apple MacBook Pro 2016',
                price: '\$148.30',
              ),
              const SizedBox(height: 10.0),
              RecentlyCard(
                onPress: () {
                  setState(() {
                    isChack3 = !isChack3;
                  });
                },
                favorite: () {
                  setState(() {
                    isFavorite3 = !isFavorite3;
                  });
                },
                sopping: () {
                  setState(() {
                    isSopping3 = !isSopping3;
                  });
                },
                chile: isChack3 == true
                    ? const Icon(
                        Icons.check_circle,
                        size: 20.0,
                        color: Color(0xff00BB45),
                      )
                    : const Icon(
                        FontAwesomeIcons.circle,
                        size: 20.0,
                        color: Color(0xffD5D5D5),
                      ),
                favorieIcon: isFavorite3 == true
                    ? const Icon(
                        Icons.favorite,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                soppingIcon: isSopping3 == true
                    ? const Icon(
                        Icons.shopping_cart_rounded,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                imageUrl: 'assets/ImgReview3.png',
                productName: 'Men sweatshirts hoodie\nsweats',
                price: '\$38.30',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Jan 03, 2022',
                    style: kRecentlyDateText,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              RecentlyCard(
                onPress: () {
                  setState(() {
                    isChack4 = !isChack4;
                  });
                },
                favorite: () {
                  setState(() {
                    isFavorite4 = !isFavorite4;
                  });
                },
                sopping: () {
                  setState(() {
                    isSopping4 = !isSopping4;
                  });
                },
                chile: isChack4 == true
                    ? const Icon(
                        Icons.check_circle,
                        size: 20.0,
                        color: Color(0xff00BB45),
                      )
                    : const Icon(
                        FontAwesomeIcons.circle,
                        size: 20.0,
                        color: Color(0xffD5D5D5),
                      ),
                favorieIcon: isFavorite4 == true
                    ? const Icon(
                        Icons.favorite,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                soppingIcon: isSopping4 == true
                    ? const Icon(
                        Icons.shopping_cart_rounded,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                imageUrl: 'assets/ImgReview4.png',
                productName: 'Brown Formal Shoes',
                price: '\$108.30',
              ),
              const SizedBox(height: 10.0),
              RecentlyCard(
                onPress: () {
                  setState(() {
                    isChack5 = !isChack5;
                  });
                },
                favorite: () {
                  setState(() {
                    isFavorite5 = !isFavorite5;
                  });
                },
                sopping: () {
                  setState(() {
                    isSopping5 = !isSopping5;
                  });
                },
                chile: isChack5 == true
                    ? const Icon(
                        Icons.check_circle,
                        size: 20.0,
                        color: Color(0xff00BB45),
                      )
                    : const Icon(
                        FontAwesomeIcons.circle,
                        size: 20.0,
                        color: Color(0xffD5D5D5),
                      ),
                favorieIcon: isFavorite5 == true
                    ? const Icon(
                        Icons.favorite,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                soppingIcon: isSopping5 == true
                    ? const Icon(
                        Icons.shopping_cart_rounded,
                        color: Color(0xffF82D7F),
                        size: 21.0,
                      )
                    : const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xffA7A6C5),
                        size: 21.0,
                      ),
                imageUrl: 'assets/ImgReview5.png',
                productName: 'Headphone',
                price: '\$98.30',
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}