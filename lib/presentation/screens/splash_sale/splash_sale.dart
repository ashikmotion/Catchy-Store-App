import 'package:flutter/material.dart';

import '../../widgets/new_products.dart';

enum ItemBox { all, call, electric, furniture, fashion, computer }

class FlashSaleScreen extends StatefulWidget {
  const FlashSaleScreen({Key? key}) : super(key: key);

  static const String id = 'flash_sale-screen';

  @override
  State<FlashSaleScreen> createState() => _FlashSaleScreenState();
}

class _FlashSaleScreenState extends State<FlashSaleScreen> {
  ItemBox? selectedItemBox;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
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
          'Flash Sale',
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Items(
                      itemText: 'All',
                      textColor: selectedItemBox == ItemBox.all
                          ? Colors.white
                          : const Color(0xff49476E),
                      color: selectedItemBox == ItemBox.all
                          ? const Color(0xff7045D9)
                          : const Color.fromARGB(255, 234, 234, 236),
                      onPress: () {
                        setState(() {
                          selectedItemBox = ItemBox.all;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    Items(
                      itemText: 'Call Phones',
                      textColor: selectedItemBox == ItemBox.call
                          ? Colors.white
                          : const Color(0xff49476E),
                      color: selectedItemBox == ItemBox.call
                          ? const Color(0xff7045D9)
                          : const Color.fromARGB(255, 234, 234, 236),
                      onPress: () {
                        setState(() {
                          selectedItemBox = ItemBox.call;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    Items(
                      itemText: 'Electric',
                      textColor: selectedItemBox == ItemBox.electric
                          ? Colors.white
                          : const Color(0xff49476E),
                      color: selectedItemBox == ItemBox.electric
                          ? const Color(0xff7045D9)
                          : const Color.fromARGB(255, 234, 234, 236),
                      onPress: () {
                        setState(() {
                          selectedItemBox = ItemBox.electric;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    Items(
                      itemText: 'Furniture',
                      textColor: selectedItemBox == ItemBox.furniture
                          ? Colors.white
                          : const Color(0xff49476E),
                      color: selectedItemBox == ItemBox.furniture
                          ? const Color(0xff7045D9)
                          : const Color.fromARGB(255, 234, 234, 236),
                      onPress: () {
                        setState(() {
                          selectedItemBox = ItemBox.furniture;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    Items(
                      itemText: 'Fashion',
                      textColor: selectedItemBox == ItemBox.fashion
                          ? Colors.white
                          : const Color(0xff49476E),
                      color: selectedItemBox == ItemBox.fashion
                          ? const Color(0xff7045D9)
                          : const Color.fromARGB(255, 234, 234, 236),
                      onPress: () {
                        setState(() {
                          selectedItemBox = ItemBox.fashion;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    Items(
                      itemText: 'Computer',
                      textColor: selectedItemBox == ItemBox.computer
                          ? Colors.white
                          : const Color(0xff49476E),
                      color: selectedItemBox == ItemBox.computer
                          ? const Color(0xff7045D9)
                          : const Color.fromARGB(255, 234, 234, 236),
                      onPress: () {
                        setState(() {
                          selectedItemBox = ItemBox.computer;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
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

class Items extends StatelessWidget {
  const Items({
    Key? key,
    required this.itemText,
    required this.onPress,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final String itemText;
  final Function onPress;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          alignment: Alignment.center,
          height: 30.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Text(
            itemText,
            style: TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.w500, color: textColor),
          ),
        ),
      ),
    );
  }
}
