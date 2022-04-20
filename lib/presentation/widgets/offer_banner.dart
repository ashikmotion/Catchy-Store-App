// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:catchy_store/presentation/resources/routes.dart';
import 'package:flutter/material.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        width: 380.0,
        height: 160.0,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.formSliderRoute);
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Carousel(
              dotSize: 5.0,
              dotSpacing: 15.0,
              autoplay: false,
              dotIncreasedColor: const Color(0xffF82D7F),
              dotColor: const Color.fromARGB(255, 247, 164, 197),
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 5.0,
              images: [
                Image.asset(
                  'assets/Banner 1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Banner 1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Banner 1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Banner 1.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
