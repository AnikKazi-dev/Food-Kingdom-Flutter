import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Dimensions {
  //dynamic height
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  // 844(Screen Height) / 220 (PageView Container) = 3.84(Height Factor)
  static double pageViewContainer = screenHeight / 3.84;
  // 844 / 120 = 7.03
  static double pageViewTextContainer = screenHeight / 7.03;
  static double pageView = screenHeight / 2.64;

  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //font size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  //dynamic width 392.73
  static double width10 = screenWidth / 39.27;
  static double width15 = screenWidth / 26.182;
  static double width20 = screenWidth / 19.6365;
  static double width30 = screenWidth / 13.091;
  static double width45 = screenWidth / 8.7274;

  //dynamic icon size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // list view size
  static double listViewImageSize = screenWidth / 3.27;
  static double listViewTextSize = screenWidth / 3.92;

  //popular food page
  static double popularFoodImageSize = screenHeight / 2.41;

  //bottom hight
  static double bottomHeightBar = screenHeight / 7.03;
}
