import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/account_heder.dart';
import '../../widgets/order_a.dart';
import '../my_coupon/my_coupon.dart';
import '../recently_viewed/recently_viewed.dart';
import '../setting/setting.dart';
import '../signup/signup.dart';
import '../../../presentation/resources/assets.dart';
import '../../../presentation/resources/strings.dart';

class AccountAfterScreen extends StatelessWidget {
  const AccountAfterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: const Text(
          AppStrings.myProfile,
          style: kAccountAppbarText,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(ImageAssets.flagLogo),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Color(0xff8482AC),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Color(0xff8482AC),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: kAccountDecuration,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    AppStrings.ibSina,
                    style: TextStyle(color: Color(0xff091039), fontSize: 22.0),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    AppStrings.locationBangladesh,
                    style: TextStyle(color: Color(0xff8482AC)),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const AccountHeaderItems(
                        title: '0',
                        subTitle: AppStrings.wishList,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RecentlyViewedScreen.id);
                        },
                        child: const AccountHeaderItems(
                          title: '0',
                          subTitle: AppStrings.recentlyViewed,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MyCouponsScreen.id);
                        },
                        child: const AccountHeaderItems(
                          title: '0',
                          subTitle: AppStrings.myCoupon,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 170.0,
              width: 360.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          AppStrings.myOrders,
                          style: kAccountOrderHeaderLeaftText,
                        ),
                        Row(
                          children: const [
                            Text(
                              AppStrings.showAll,
                              style: kAccountOrderHeaderRightText,
                            ),
                            SizedBox(width: 3.0),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xff7045D9),
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: const Color(0xffEDEDED),
                    ),
                    const SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AccountOrderCard(
                          imageUrl: ImageAssets.wallet,
                          text: 'Unpaid',
                          color: Color(0xffF3D2E6),
                        ),
                        AccountOrderCard(
                          imageUrl: ImageAssets.shipped,
                          text: 'Pending',
                          color: Color(0xffD2E4F3),
                        ),
                        AccountOrderCard(
                          imageUrl: ImageAssets.pickup,
                          text: 'Delivered',
                          color: Color(0xffD2F3DC),
                        ),
                        AccountOrderCard(
                          imageUrl: 'assets/Review.png',
                          text: 'Reviews',
                          color: Color(0xffF3E3D2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 230.0,
              width: 360.0,
              decoration: kAccountListCartDecuration,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'Payment Options',
                      style: kAccountListCardText,
                    ),
                    leading: Icon(
                      Icons.payments_outlined,
                      color: Color(0xffA7A6C5),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffA7A6C5),
                      size: 18.0,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, SettingScreen.id);
                    },
                    title: const Text(
                      'Settings',
                      style: kAccountListCardText,
                    ),
                    leading: const Icon(
                      Icons.settings_outlined,
                      color: Color(0xffA7A6C5),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffA7A6C5),
                      size: 18.0,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Contact Us',
                      style: kAccountListCardText,
                    ),
                    leading: Icon(
                      Icons.headphones_outlined,
                      color: Color(0xffA7A6C5),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffA7A6C5),
                      size: 18.0,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'FAQS',
                      style: kAccountListCardText,
                    ),
                    leading: Icon(
                      Icons.contact_support_outlined,
                      color: Color(0xffA7A6C5),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffA7A6C5),
                      size: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
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
                      style: TextStyle(
                        color: Color(0xffF82D7F),
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  minimumSize: const Size(350, 45),
                  animationDuration: const Duration(milliseconds: 200),
                  elevation: 0,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}