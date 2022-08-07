import 'package:flutter/material.dart';

import '../../../presentation/resources/routes.dart';
import '../../../presentation/resources/strings.dart';
import '../../resources/constend.dart';
import '../../resources/content_model.dart';

class OneBoardingScreen extends StatefulWidget {
  const OneBoardingScreen({Key? key}) : super(key: key);

  @override
  _OneBoardingScreenState createState() => _OneBoardingScreenState();
}

class _OneBoardingScreenState extends State<OneBoardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      const SizedBox(height: 170.0),
                      Image(
                        image: AssetImage(contents[i].image.toString()),
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        contents[i].title.toString(),
                        textAlign: TextAlign.center,
                        style: kOnboardingTitleStyle,
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        contents[i].discription.toString(),
                        textAlign: TextAlign.center,
                        style: kOnboardingDesStyle,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                child: const Text(
                  AppStrings.onBoardingButtonText,
                  style: kOnbordingButtonTextStyle,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.loginRoute);
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: kOnboardingSape,
                  primary: kOnboardingButtonColor,
                  onPrimary: Colors.black,
                  onSurface: Colors.grey,
                  minimumSize: const Size(330, 45),
                  animationDuration: const Duration(milliseconds: 200),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? kOnboardingActiveDotsColor
            : kOnboardingInActivDotsColor,
      ),
    );
  }
}
