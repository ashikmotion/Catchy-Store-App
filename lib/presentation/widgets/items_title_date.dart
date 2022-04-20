import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../resources/constend.dart';
import '../../presentation/widgets/time_box.dart';


class ItemsTitleWithDateTime extends StatelessWidget {
  const ItemsTitleWithDateTime({
    Key? key,
    required this.onTab,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  title,
                  style: kItemsTDTitle,
                ),
              ),
              TimeBox(
                text: DateFormat('KK').format(DateTime.now()),
              ),
              const SizedBox(width: 5.0),
              TimeBox(
                text: DateFormat('mm').format(DateTime.now()),
              ),
              const SizedBox(width: 5.0),
              TimeBox(
                text: DateFormat('ss').format(DateTime.now()),
              ),
            ],
          ),
          TextButton(
            onPressed: (() {
              onTab();
            }),
            child: Text(
              subTitle,
              style: kItemsTDSubTitle,
            ),
          ),
        ],
      ),
    );
  }
}