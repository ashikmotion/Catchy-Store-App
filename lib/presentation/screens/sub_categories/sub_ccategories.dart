import 'package:flutter/material.dart';

import '../../resources/constend.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Men\'n Fashion',
          style: kSubCategoriesAppBarText,
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
              Icons.search,
              color: Colors.black,
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
              child: Row(
                children: const [
                  Image(
                    height: 25.0,
                    color: Color(0xff7045D9),
                    image: AssetImage('assets/icon 3.png'),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'All Men\'n Fashion',
                    style: kCategoriesHeddingText,
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                'Hoodies & Sweatshirts',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'T-Shirts',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Shirts',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Casual Shorts',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Men\'s Sets',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Jackets',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Sweaters',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Casual Faux Leather',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Genuine Leather',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Parkas',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Down Jackets',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Suits & Blazer',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Cosplay Costumes',
                style: kItemsListText,
              ),
            ),
            const ListTile(
              title: Text(
                'Stage & Dance Wear',
                style: kItemsListText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}