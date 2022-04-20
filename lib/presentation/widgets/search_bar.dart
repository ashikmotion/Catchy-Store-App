// Packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../resources/constend.dart';
import '../../presentation/resources/routes.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.searchDropdownRoute);
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  FontAwesomeIcons.search,
                  color: Color(0xff8482AC),
                  size: 17.0,
                ),
              ),
              Text(
                'Search',
                style: kSearchBarText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
