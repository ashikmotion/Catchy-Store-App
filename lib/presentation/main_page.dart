// Package
import 'package:catchy_store/presentation/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Screens
import '../presentation/screens/account_before/account_before.dart';
import '../presentation/screens/categories/categories.dart';
import '../presentation/screens/chat/chat.dart';
import '../presentation/screens/home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const ChatScreen(),
    const Center(
      child: Text('Cart Screen'),
    ),
    const AccountBeforeScreen(),
    // const AccountAfterScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffF82D7F),
        unselectedItemColor: const Color(0xff8482AC),
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_outlined),
            label: AppStrings.categories,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.commentDots),
            label: AppStrings.chats,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: AppStrings.cart,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: AppStrings.account,
          ),
        ],
      ),
    );
  }
}
