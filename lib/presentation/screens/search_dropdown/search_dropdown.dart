import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../resources/routes.dart';
import '../splash_sale/splash_sale.dart';

class SearchDropdown extends StatefulWidget {
  const SearchDropdown({Key? key}) : super(key: key);

  @override
  State<SearchDropdown> createState() => _SearchDropdownState();
}

class _SearchDropdownState extends State<SearchDropdown> {
  final emailControlar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: TextFormField(
            cursorColor: Colors.black,
            autofocus: false,
            decoration: kSigninTextFildDecuration.copyWith(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffEEEEEE),
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffF82D7F),
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              hintText: 'smart electronics',
              suffixIcon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.searchPageViewRoute);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF82D7F),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            controller: emailControlar,
            validator: (value) {
              if (value == null) {
                return 'Please enter Email';
              } else if (!value.contains('@')) {
                return 'Please Enter Valid Email';
              }
              return null;
            },
          ),
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Search history',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_rounded),
                )
              ],
            ),
            Row(
              children: [
                Items(
                  itemText: 'wireless headphone',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
                Items(
                  itemText: 'Fitness Tracker',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
                Items(
                  itemText: 'Realme',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Items(
                  itemText: 'wireless headphone',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
                Items(
                  itemText: 'Fitness Tracker',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
                Items(
                  itemText: 'Realme',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Search history',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Items(
                  itemText: 'wireless headphone',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
                Items(
                  itemText: 'Fitness Tracker',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
                Items(
                  itemText: 'Realme',
                  textColor: Colors.black,
                  color: const Color.fromARGB(255, 234, 234, 236),
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
