import 'package:flutter/material.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // here the desired height
        child: AppBar(
          elevation: 0,
          actions: [
            const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.white,
          title: Container(
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 234, 234, 236),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: const Text(
              'Smart Electronics',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
