import 'package:catchy_store/presentation/resources/routes.dart';
import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/items_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  static const String id = 'categoris-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          "Categoris",
          style: kCategoriesAppBarText,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xff49476E),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.centerLeft,
              height: 45.0,
              width: double.infinity,
              color: const Color(0xffF0F0F0),
              child: const Text(
                'All Categories',
                style: kCategoriesHeddingText,
              ),
            ),
            ItemsList(
              iconUrl: 'assets/icon 2.png',
              text: 'Women\'s Fashion',
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 1.png',
              text: 'Consumer Electronics',
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 3.png',
              text: 'Men\'s Fashion',
              onPress: () {
                Navigator.pushNamed(context, Routes.subCategoriesRoute);
              },
            ),
            ItemsList(
              iconUrl: 'assets/icon 4.png',
              text: 'Mobile Phones',
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 5.png',
              text: 'Home & Garden',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 6.png',
              text: 'Computer',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 7.png',
              text: 'Jewelry & Watches',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 8.png',
              text: 'Bags & Shoes',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 9.png',
              text: 'Toys & Babies',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 10.png',
              text: 'Sports & Outdoor',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 12.png',
              text: 'Automotive & Motorbike',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
            ItemsList(
              iconUrl: 'assets/icon 13.png',
              text: 'Automotive & Motorbike',
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17.0,
                color: Color(0xff8482AC),
              ),
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
