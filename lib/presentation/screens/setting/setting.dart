import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/items_setting.dart';
import '../account_information/account_information.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  static const String id = 'setting-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: const Text(
          'Setting',
          style: kSettingAppBarText,
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
      ),
      body: Column(
        children: [
          const SizedBox(height: 10.0),
          Container(
            height: 120.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SettingItemsList(
                  onPress: () {
                    Navigator.pushNamed(context, AccountInforemationScreen.id);
                  },
                  text: 'Account Information',
                  iconTrailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffA7A6C5),
                    size: 20.0,
                  ),
                  iconLeading: Icons.person_outline_outlined,
                ),
                SettingItemsList(
                  onPress: () {},
                  text: 'Shipping Address',
                  iconTrailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffA7A6C5),
                    size: 20.0,
                  ),
                  iconLeading: Icons.location_on_outlined,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 180.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Color(0xff8482AC),
                          ),
                          SizedBox(width: 34.0),
                          Text(
                            'Ship to',
                            style: kSettingItem2BoxText1,
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Bangladesh',
                            style: kSettingItem2BoxText2,
                          ),
                          SizedBox(width: 10.0),
                          Image(image: AssetImage('assets/FlagSetting.png'))
                        ],
                      ),
                    ],
                  ),
                ),
                SettingItemsList(
                  onPress: () {},
                  text: 'Currency',
                  iconTrailing: const Text(
                    'USD',
                    style: kSettingItemCurreText,
                  ),
                  iconLeading: Icons.local_atm_rounded,
                ),
                SettingItemsList(
                  onPress: () {},
                  text: 'Language',
                  iconTrailing: const Text(
                    'English',
                    style: kSettingItemLangText,
                  ),
                  iconLeading: Icons.local_atm_rounded,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 230.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SettingItemsList(
                  onPress: () {},
                  iconLeading: Icons.notifications_none,
                  iconTrailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffA7A6C5),
                    size: 20.0,
                  ),
                  text: 'Notifications',
                ),
                SettingItemsList(
                  onPress: () {},
                  iconLeading: Icons.storage_outlined,
                  iconTrailing: const Text(
                    '236KB',
                    style: TextStyle(color: Color(0xff8482AC), fontSize: 17.0),
                  ),
                  text: 'Clear cache',
                ),
                SettingItemsList(
                  onPress: () {},
                  iconLeading: Icons.star_border,
                  iconTrailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffA7A6C5),
                    size: 20.0,
                  ),
                  text: 'Rate us in Google Play',
                ),
                SettingItemsList(
                  onPress: () {},
                  iconLeading: Icons.star_border,
                  iconTrailing: const Text(
                    'V2.0.3',
                    style: TextStyle(color: Color(0xff8482AC), fontSize: 17.0),
                  ),
                  text: 'Version',
                )
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.exit_to_app_rounded,
                    color: Color(0xffF82D7F),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Sign Out',
                    style: kSettingButtonText,
                  ),
                ],
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                primary: Colors.white,
                onPrimary: Colors.white,
                minimumSize: const Size(350, 45),
                animationDuration: const Duration(milliseconds: 200),
                elevation: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}