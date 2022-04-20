//? Root
import 'package:catchy_store/presentation/screens/search_page/search_page.dart';
import 'package:flutter/material.dart';

//? Pages
import '../../app/app.dart';
import '../../presentation/main_page.dart';
import '../../presentation/resources/strings.dart';
import '../../presentation/screens/account_after/account_after.dart';
import '../../presentation/screens/account_before/account_before.dart';
import '../../presentation/screens/account_information/account_information.dart';
import '../../presentation/screens/categories/categories.dart';
import '../../presentation/screens/chat/chat.dart';
import '../../presentation/screens/chat_details/chat_detailes.dart';
import '../../presentation/screens/coupon_center/coupon_center.dart';
import '../../presentation/screens/create_password/create_password.dart';
import '../../presentation/screens/form_slider/form_slider.dart';
import '../../presentation/screens/home/home.dart';
import '../../presentation/screens/my_coupon/my_coupon.dart';
import '../../presentation/screens/oneboarding/oneboarding.dart';
import '../../presentation/screens/recently_viewed/recently_viewed.dart';
import '../../presentation/screens/recovery_password/recovery_password.dart';
import '../../presentation/screens/search_dropdown/search_dropdown.dart';
import '../../presentation/screens/setting/setting.dart';
import '../../presentation/screens/signin/signin.dart';
import '../../presentation/screens/signup/signup.dart';
import '../../presentation/screens/splash_sale/splash_sale.dart';
import '../../presentation/screens/verification/verification.dart';

class Routes {
  static const String splashRoute = '/';
  static const String appRoute = '/app';
  static const String mainRoute = '/main';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String homeRoute = '/home';
  static const String chatRoute = '/chat';
  static const String couponCenterRoute = '/couponCenter';
  static const String accountAfterRoute = '/accountAfter';
  static const String accountBeforeRoute = '/accountBefore';
  static const String categoriesRoute = '/categories';
  static const String accountInforemationRoute = '/accountInforemation';
  static const String chatDetailsRoute = '/chatDetails';
  static const String createPasswordRoute = '/createPassword';
  static const String formSliderRoute = '/formSlider';
  static const String myCouponRoute = '/myCoupon';
  static const String recentlyViewedRoute = '/recentlyViewed';
  static const String recoveryPasswordRoute = '/recoveryPassword';
  static const String settingRoute = '/setting';
  static const String splashSaleRoute = '/splashSale';
  static const String subCategoriesRoute = '/subCategories';
  static const String verificationRoute = '/verification';
  static const String searchDropdownRoute = '/searchDropdown';
  static const String searchPageViewRoute = '/searchPageView';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OneBoardingScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.appRoute:
        return MaterialPageRoute(builder: (_) => const MyApp());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.chatRoute:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case Routes.chatDetailsRoute:
        return MaterialPageRoute(builder: (_) => const ChatDetailsScreen());
      case Routes.couponCenterRoute:
        return MaterialPageRoute(builder: (_) => const CouponCenterScreen());
      case Routes.myCouponRoute:
        return MaterialPageRoute(builder: (_) => const MyCouponsScreen());
      case Routes.accountAfterRoute:
        return MaterialPageRoute(builder: (_) => const AccountAfterScreen());
      case Routes.accountBeforeRoute:
        return MaterialPageRoute(builder: (_) => const AccountBeforeScreen());
      case Routes.accountInforemationRoute:
        return MaterialPageRoute(
            builder: (_) => const AccountInforemationScreen());
      case Routes.categoriesRoute:
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      case Routes.createPasswordRoute:
        return MaterialPageRoute(
            builder: (_) => const CreateNewPasswordScreen());
      case Routes.formSliderRoute:
        return MaterialPageRoute(builder: (_) => const FromSliderScreen());
      case Routes.recentlyViewedRoute:
        return MaterialPageRoute(builder: (_) => const RecentlyViewedScreen());
      case Routes.recoveryPasswordRoute:
        return MaterialPageRoute(
            builder: (_) => const RecoveryPasswordScreen());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.splashSaleRoute:
        return MaterialPageRoute(builder: (_) => const FlashSaleScreen());
      case Routes.verificationRoute:
        return MaterialPageRoute(
            builder: (_) => const VerificationCodeScreen());
      case Routes.searchDropdownRoute:
        return MaterialPageRoute(builder: (_) => const SearchDropdown());
      case Routes.searchPageViewRoute:
        return MaterialPageRoute(builder: (_) => const SearchPageView());
      default:
        return UnDefinedRoute();
    }
  }

  // ignore: non_constant_identifier_names
  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
