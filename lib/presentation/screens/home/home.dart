// Packages
import 'package:flutter/material.dart';

// Screen
import '../../widgets/categories_box.dart';
import '../../widgets/items_title.dart';
import '../../widgets/items_title_date.dart';
import '../../widgets/new_products.dart';
import '../../widgets/offer_banner.dart';
import '../../widgets/sale_card.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/top_products.dart';
import '../../../presentation/resources/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: SearchBar(
                  color: Colors.white,
                  
                ),
              ),
              const OfferBanner(),
              ItemsTitles(
                onTab: () {},
                title: 'Categories',
                subTitle: 'Show all',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 6.0),
                  child: Row(
                    children: const [
                      CategoriesBox(
                        color: Color(0xffF3D2E6),
                        imageUrl: 'assets/icon 1.png',
                        text: 'Electronics',
                      ),
                      CategoriesBox(
                        color: Color(0xffD2E4F3),
                        imageUrl: 'assets/icon 2.png',
                        text: 'Women\'s',
                      ),
                      CategoriesBox(
                        color: Color(0xffD2F3DC),
                        imageUrl: 'assets/icon 3.png',
                        text: 'Men\'s',
                      ),
                      CategoriesBox(
                        color: Color(0xffD6DBEF),
                        imageUrl: 'assets/icon 4.png',
                        text: 'Mobile',
                      ),
                      CategoriesBox(
                        color: Color(0xffF3E3D2),
                        imageUrl: 'assets/icon 5.png',
                        text: 'Home',
                      ),
                      CategoriesBox(
                        color: Color(0xffF3D2E6),
                        imageUrl: 'assets/icon 1.png',
                        text: 'Electronics',
                      ),
                      CategoriesBox(
                        color: Color(0xffD2E4F3),
                        imageUrl: 'assets/icon 2.png',
                        text: 'Women\'s',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              ItemsTitleWithDateTime(
                onTab: () {
                  Navigator.pushNamed(context, Routes.splashSaleRoute);
                },
                subTitle: 'Show all',
                title: 'Flash Sale',
              ),
              const SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SaleCard(
                      imageUrl: 'assets/Img1.png',
                      title: 'Realme Smart\nWatch',
                      price: '\$48.38',
                      oldPrice: '\$125.38',
                    ),
                    SaleCard(
                      imageUrl: 'assets/Img2.png',
                      title: 'Headphone',
                      price: '\$124',
                      oldPrice: '\$235',
                    ),
                    SaleCard(
                      imageUrl: 'assets/Img3.png',
                      title: 'Modern Interior\nLamp',
                      price: '\$148.30',
                      oldPrice: '\$225.30',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              ItemsTitles(
                onTab: () {},
                title: 'Top Products',
                subTitle: 'Show all',
              ),
              const SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    TopProductsCard(
                      imageUrl: 'assets/ImgT1.png',
                      title: 'Coloured Beige\nDress',
                    ),
                    TopProductsCard(
                      imageUrl: 'assets/ImgT2.png',
                      title: 'Brown Formal\nShoes',
                    ),
                    TopProductsCard(
                      imageUrl: 'assets/ImgT3.png',
                      title: 'Original Bag \nBackpack',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              ItemsTitles(
                onTab: () {},
                title: 'New Products',
                subTitle: 'Show all',
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: NewProductsCard(
                            imageUrl: 'assets/BG1.png',
                            title: 'Men Brown Formal\nShoes',
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: NewProductsCard(
                            imageUrl: 'assets/BG2.png',
                            title: 'Red Phone',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: const [
                        Expanded(
                          child: NewProductsCard(
                            imageUrl: 'assets/BG3.png',
                            title: 'Apple MacBook Pro\n2020',
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: NewProductsCard(
                            imageUrl: 'assets/BG4.png',
                            title: 'Arm Chair- Office \nInterior',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
