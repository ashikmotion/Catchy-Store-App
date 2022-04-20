import 'package:flutter/material.dart';

//?  COLORS  //
const kOnboardingDesColor = Color(0xff57557E);
const kOnboardingTitleColor = Color(0xff091039);
const kOnboardingBackgroundColor = Colors.white;
const kOnboardingButtonColor = Color(0xffE4E2E3);
const kOnboardingActiveDotsColor = Color(0xffF82D7F);
const kOnboardingInActivDotsColor = Color(0xffF3B2CC);

//?  Onboarding-Screen STYLES  //
const kOnboardingTitleStyle = TextStyle(
  fontSize: 25.0,
  color: kOnboardingTitleColor,
  fontWeight: FontWeight.w500,
);
const kOnboardingDesStyle = TextStyle(
  fontSize: 19.0,
  color: kOnboardingDesColor,
);
const kOnbordingButtonTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
const kOnboardingSape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(15)),
);

//?  Signin-Screen STYLES  //
const kSigninHeaderTitleStyle = TextStyle(
  fontSize: 23.0,
  color: Color(0xff091039),
  fontWeight: FontWeight.bold,
);
const kSigninHeaderdesStyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xff57557E),
);
const kSigninTextFildDecuration = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xffEEEEEE),
      width: 2,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 2,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xffEEEEEE),
      width: 2,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: Color(0xffAAAAAA)),
  suffixIcon: null,
);
const kSigninrememberTextStyle = TextStyle(color: Color(0xff818181));
const kSigninOrTextStyle = TextStyle(color: Color(0xff8482AC));
const kSigninDontTextStyle = TextStyle(fontSize: 15, color: Color(0xff707070));
const kSigninSignupTextStyle = TextStyle(
  fontSize: 15,
  color: Color(0xffF82D7F),
);

//?  Create_Password-Screen STYLES  //
const kCreateTitleTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff091039),
);
const kCreateDescText = TextStyle(
  fontSize: 16.0,
  color: Color(0xff57557E),
);

//?  Recovery_Password-Screen STYLES  //
const kRecoveryTitle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff091039),
);
const kRecoveryDesc = TextStyle(
  fontSize: 16.0,
  color: Color(0xff57557E),
);

//?  Verication-Screen STYLES  //
const kVerificationTitle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff091039),
);
const kVerificationDesc = TextStyle(
  fontSize: 16.0,
  color: Color(0xff57557E),
);

//!  Home-Screen STYLES  //
//?  Search_Bar-Widget STYLES  //
const kSearchBarText = TextStyle(
  color: Color(0xffA7A6C5),
  fontSize: 16.0,
);

//?  Offer_Banner-Widget STYLES  //
const kBannerTitle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
const kBannerSubTitle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xffF82D7F),
);
const kBannerBtn = TextStyle(fontSize: 18.0);

//?  Items_Title-Widget STYLES  //
const kItemsTitleTitle = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);
const kItemsTitleSubTitle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff7045D9),
);

//?  Categories_Box-Widget STYLES  //
const kCategoriesBText = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);

//?  Items_Title_Date-Widget STYLES  //
const kItemsTDTitle = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);
const kItemsTDSubTitle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff7045D9),
);

//?  Sale_Card-Widget STYLES  //
const kSaleCDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
const kSaleCTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
const kSaleCPrice = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0xffF82D7F),
);
const kSaleCOldPrice = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 14.0,
  color: Color(0xff8482AC),
);

//?  Sale_Card-Widget STYLES  //
const kTopProductDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
const kTopProductTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
const kTopProductPrice = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0xffF82D7F),
);
const kTopProductOldPrice = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 14.0,
  color: Color(0xff8482AC),
);
const kTopProductStarNum = TextStyle(
  fontWeight: FontWeight.bold,
  color: Color(0xff49476E),
);
const kTopProductStarNumber = TextStyle(color: Color(0xff8482AC));
const kTopProductSoldNum = TextStyle(color: Color(0xff8482AC));

//?  Discount-Widget STYLES  //
const kDiscountDecuration = BoxDecoration(
  color: Color(0xffF82D7F),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
  ),
);
const kDiscountText = TextStyle(fontSize: 12.0, color: Colors.white);

//?  New_Products-Widget STYLES  //
const kNewProductDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
const kNewProductTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
const kNewProductPrice = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0xffF82D7F),
);
const kNewProductOldPrice = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 14.0,
  color: Color(0xff8482AC),
);
const kNewProductStarNum = TextStyle(
  fontWeight: FontWeight.bold,
  color: Color(0xff49476E),
);
const kNewProductStarNumber = TextStyle(color: Color(0xff8482AC));
const kNewProductSold = TextStyle(color: Color(0xff8482AC));
const kNewProductcardBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(30.0)),
);
const kNewProductCardDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(30.0)),
);

//?  Categories-Screen STYLES  //
const kCategoriesAppBarText = TextStyle(color: Color(0xff091039));
const kCategoriesHeddingText = TextStyle(
  color: Color(0xff7045D9),
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
);

//?  Sub_Categories-Screen STYLES  //
const kSubCategoriesAppBarText = TextStyle(color: Color(0xff091039));

//?  Chat-Screen STYLES  //
const kChatAppBarText = TextStyle(color: Color(0xff091039));

//?  Items_List-Widget  STYLES  //
const kItemsListText = TextStyle(color: Color(0xff49476E), fontSize: 17.0);
const kItemListUserName = TextStyle(
  color: Color(0xff091039),
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);
const kItemListUserMassage = TextStyle(color: Color(0xff8482AC));
const kItemListTime = TextStyle(color: Color(0xffA7A6C5));
const kItemListMassageCountDecuration = BoxDecoration(
  color: Color(0xff00BB45),
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
);
const kItemListMassageCountText = TextStyle(color: Colors.white);

//?  Chat_Datails-Screen STYLES  //
const kChatDetailsAppBarText = TextStyle(color: Color(0xff091039));

//?  Account-Screen STYLES  //
const kAccountAppbarText = TextStyle(color: Color(0xff091039), fontSize: 20.0);
const kAccountDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(20.0),
    bottomRight: Radius.circular(20.0),
  ),
);
const kAccountProfileDecuration = BoxDecoration(
  color: Color(0xffC6C6D8),
  borderRadius: BorderRadius.all(Radius.circular(50.0)),
);
const kAccounButtonText = TextStyle(color: Colors.white);
const kAccountOrderHeaderLeaftText = TextStyle(
  fontSize: 17.0,
  color: Color(0xff091039),
  fontWeight: FontWeight.bold,
);
const kAccountOrderHeaderRightText = TextStyle(
  fontSize: 14.0,
  color: Color(0xff7045D9),
  fontWeight: FontWeight.bold,
);
const kAccountListCartDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);
const kAccountListCardText = TextStyle(
  color: Color(0xff49476E),
  fontSize: 15.0,
);

//?  Flash_Sale-Screen STYLES  //


//?  Setting-Screen STYLES  //
const kSettingAppBarText = TextStyle(color: Colors.black);
const kSettingItem2BoxText1 = TextStyle(
  color: Color(0xff49476E),
  fontSize: 17.0,
);
const kSettingItem2BoxText2 = TextStyle(
  color: Color(0xff8482AC),
  fontSize: 17.0,
);
const kSettingItemCurreText = TextStyle(
  color: Color(0xffA7A6C5),
  fontSize: 17.0,
);
const kSettingItemLangText = TextStyle(
  color: Color(0xff8482AC),
  fontSize: 17.0,
);
const kSettingButtonText = TextStyle(
  color: Color(0xffF82D7F),
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
);

//?  Account_Inforemation-Screen STYLES  //
const kAccountInfoAppBarText = TextStyle(color: Colors.black);
const kAccountInfoHeaderText = TextStyle(
  color: Color(0xff49476E),
  fontSize: 23.0,
);
const kAccountInfoListText1 =
    TextStyle(color: Color(0xff49476E), fontSize: 21.0);
const kAccountInfoListText2 = TextStyle(
  color: Color(0xff8482AC),
  fontSize: 18.0,
);

//?  Recently_Viewed-Screen STYLES  //
const kRecentlyViewedAppBarText = TextStyle(color: Color(0xff091039));
const kRecentlyDateText = TextStyle(fontSize: 19.0);

//?  Recently_card-Widget STYLES  //
const kRecentlyCartDecuration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);
const kRecentlyCartProductName = TextStyle(
  color: Color(0xff091039),
  fontSize: 19.0,
  fontWeight: FontWeight.bold,
);
const kRecentlyCardPrice = TextStyle(color: Color(0xffF82D7F), fontSize: 22.0);

//?  My_Coupons-Screen STYLES  //
const kMyCouponsAppBar = TextStyle(color: Color(0xff091039));
const kMyCouponsHeaderText = TextStyle(
  color: Color(0xff091039),
  fontSize: 18.0,
);

//?  My_Coupons_card-Widget STYLES  //
const kMyCouponsCartDecuration1 = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    bottomRight: Radius.circular(20.0),
    topLeft: Radius.circular(7.0),
    bottomLeft: Radius.circular(7.0),
  ),
);
const kMyCouponsCardDecuration2 = BoxDecoration(
  color: Color(0xffEEC80E),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    bottomLeft: Radius.circular(20.0),
    topRight: Radius.circular(7.0),
    bottomRight: Radius.circular(7.0),
  ),
);
const kMyCouponsCardButtonText = TextStyle(
  color: Colors.black,
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
);

//?  Setting_Item_List-Widget STYLES  //
const kSettingItemsListText = TextStyle(color: Color(0xff49476E));

//?  Account_Order_Cartd-Widget STYLES  //
const kAccountOrderCardText = TextStyle(color: Color(0xff091039));

//?  Account_Header-Widget STYLES  //
const kAccountHeaderTitle = TextStyle(
  color: Color(0xff091039),
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);
const kAccountHeaderSubTitle = TextStyle(
  color: Color(0xff49476E),
  fontSize: 15.0,
  fontWeight: FontWeight.w400,
);

//!  Public-Widget STYLES  //
//?  Button-Widget STYLES  //
const kButtonText = TextStyle(fontSize: 17, fontWeight: FontWeight.bold);

//?  Socile_Button-Widget STYLES  //
const kSocileButtonDecuration = BoxDecoration(
  color: Color(0xffF4F4F6),
  borderRadius: BorderRadius.all(Radius.circular(50.0)),
);

//?  Time_Box-Widget STYLES  //
const kTimeBoxDecuration = BoxDecoration(
  color: Color(0xff7045D9),
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
);
const kTimeBoxText = TextStyle(color: Colors.white);