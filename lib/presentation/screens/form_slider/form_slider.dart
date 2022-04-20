import 'package:flutter/material.dart';

import '../../widgets/new_products.dart';

class FromSliderScreen extends StatelessWidget {
  const FromSliderScreen({Key? key}) : super(key: key);

  static const String id = 'from_slider-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'From Slider',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xff8482AC),
            ),
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: NewProductsCard(
                      imageUrl: 'assets/BG1.png',
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
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Expanded(
                    child: NewProductsCard(
                      imageUrl: 'assets/BG2.png',
                      title: 'Apple MacBook Pro\n2020',
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: NewProductsCard(
                      imageUrl: 'assets/BG3.png',
                      title: 'Arm Chair- Office \nInterior',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Expanded(
                    child: NewProductsCard(
                      imageUrl: 'assets/BG2.png',
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
      ),
    );
  }
}
