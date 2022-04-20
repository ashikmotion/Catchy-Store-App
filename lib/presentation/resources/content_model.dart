import '../../presentation/resources/assets.dart';
import '../../presentation/resources/strings.dart';

class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: AppStrings.onBoardingTitle1,
    image: ImageAssets.onBoardingLogo1,
    discription: AppStrings.onBoardingDiscription1,
  ),
  UnbordingContent(
    title: AppStrings.onBoardingTitle2,
    image: ImageAssets.onBoardingLogo2,
    discription: AppStrings.onBoardingDiscription2,
  ),
  UnbordingContent(
    title: AppStrings.onBoardingTitle3,
    image: ImageAssets.onBoardingLogo3,
    discription: AppStrings.onBoardingDiscription3,
  ),
];