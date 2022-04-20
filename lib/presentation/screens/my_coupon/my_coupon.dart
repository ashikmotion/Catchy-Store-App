import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/my_coupons_card.dart';


class MyCouponsScreen extends StatelessWidget {
  const MyCouponsScreen({Key? key}) : super(key: key);

  static const String id = 'my_coupons-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: const Text(
          'My Coupons',
          style: kMyCouponsAppBar,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: Color(0xff8482AC),
            ),
          ),
        ],
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Available Coupons (3)',
                        style: kMyCouponsHeaderText,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  MyCouponsCard(
                    onTab: () {},
                    mainChile: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '\$5.00 OFF',
                          style: TextStyle(
                              color: Color(0xffF82D7F),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'For New User',
                          style: TextStyle(
                            color: Color(0xff49476E),
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  MyCouponsCard(
                    onTab: () {},
                    mainChile: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Image(image: AssetImage('assets/ImgReview5.png')),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '\$20.00',
                              style: TextStyle(
                                  color: Color(0xffF82D7F),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Order over \$199.00',
                              style: TextStyle(
                                color: Color(0xff49476E),
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  MyCouponsCard(
                    onTab: () {},
                    mainChile: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Image(image: AssetImage('assets/ImgReview4.png')),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '\$20.00',
                              style: TextStyle(
                                  color: Color(0xffF82D7F),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Order over \$199.00',
                              style: TextStyle(
                                color: Color(0xff49476E),
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              width: double.infinity,
              color: const Color(0xffF82D7F),
              child: const Text(
                'Get More Coupons',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}