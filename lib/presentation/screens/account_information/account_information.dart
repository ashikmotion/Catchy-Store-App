// Root
import 'package:flutter/material.dart';

import '../../resources/constend.dart';

class AccountInforemationScreen extends StatelessWidget {
  const AccountInforemationScreen({Key? key}) : super(key: key);

  static const String id = 'account_inforemation-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: const Text(
          'Account Information',
          style: kAccountInfoAppBarText,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10.0),
          Container(
            height: 90.0,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Photo',
                    style: kAccountInfoHeaderText,
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1036627/pexels-photo-1036627.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 345.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ListTile(
                  title: Text(
                    'Name',
                    style: kAccountInfoListText1,
                  ),
                  trailing: Text(
                    'Ibn Sina',
                    style: kAccountInfoListText2,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Email',
                    style: kAccountInfoListText1,
                  ),
                  trailing: Text(
                    'sample@email.com',
                    style: kAccountInfoListText2,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Gender',
                    style: kAccountInfoListText1,
                  ),
                  trailing: Text(
                    'Male',
                    style: kAccountInfoListText2,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Mobile Number',
                    style: kAccountInfoListText1,
                  ),
                  trailing: Text(
                    '+880 1837 283384',
                    style: kAccountInfoListText2,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Birth Year',
                    style: kAccountInfoListText1,
                  ),
                  trailing: Text(
                    '1990',
                    style: kAccountInfoListText2,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Change Password',
                    style: kAccountInfoListText1,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.0,
                    color: Color(0xffA7A6C5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}