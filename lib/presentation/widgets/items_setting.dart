import 'package:flutter/material.dart';

import '../resources/constend.dart';

class SettingItemsList extends StatelessWidget {
  const SettingItemsList({
    Key? key,
    required this.iconLeading,
    required this.iconTrailing,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  final Widget iconTrailing;
  final IconData iconLeading;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onPress();
      },
      leading: Icon(
        iconLeading,
        color: const Color(0xff8482AC),
      ),
      trailing: iconTrailing,
      title: Text(
        text,
        style: kSettingItemsListText,
      ),
    );
  }
}