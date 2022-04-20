import 'package:flutter/material.dart';

import '../resources/constend.dart';

class UserList extends StatelessWidget {
  const UserList({
    Key? key,
    required this.imageUrl,
    required this.userMassage,
    required this.userName,
    this.userMassageCouunt,
    required this.time,
    required this.onPress,
  }) : super(key: key);

  final String imageUrl;
  final String userName;
  final String userMassage;
  final String? userMassageCouunt;
  final String time;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: SizedBox(
        height: 70.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userName,
                    style: kItemListUserName,
                  ),
                  Text(
                    userMassage,
                    style: kItemListUserMassage,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: kItemListTime,
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: 50.0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 23.0,
                        width: 23.0,
                        decoration: kItemListMassageCountDecuration,
                        child: Text(
                          userMassageCouunt!,
                          style: kItemListMassageCountText,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}