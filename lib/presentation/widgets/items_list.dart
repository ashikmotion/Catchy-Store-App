import 'package:flutter/material.dart';

import '../resources/constend.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    Key? key,
    this.iconUrl,
    required this.text,
    this.trailingIcon,
    required this.onPress,
  }) : super(key: key);

  final String? iconUrl;
  final String text;
  final Widget? trailingIcon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: ListTile(
        leading: Image(
          color: const Color(0xffA7A6C5),
          height: 25.0,
          image: AssetImage(iconUrl!),
        ),
        title: Text(
          text,
          style: kItemsListText,
        ),
        trailing: trailingIcon,
      ),
    );
  }
}