import 'package:flutter/material.dart';
import 'package:food_kingdom/controllers/cart_controller.dart';
import 'package:food_kingdom/controllers/popular_product_controller.dart';
import 'package:food_kingdom/controllers/recommended_product_controller.dart';
import 'package:food_kingdom/data/api/api_client.dart';
import 'package:food_kingdom/data/repository/cart_repository.dart';
import 'package:food_kingdom/data/repository/popular_product_repository.dart';
import 'package:food_kingdom/data/repository/recommended_product_repository.dart';
import 'package:food_kingdom/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // Repositories
  Get.lazyPut(() => PopularProductRepository(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepository(apiClient: Get.find()));
  Get.lazyPut(() => CartRepository());

  // controllers
  Get.lazyPut(
      () => PopularProductController(popularProductRepository: Get.find()));
  Get.lazyPut(() =>
      RecommendedProductController(recommendedProductRepository: Get.find()));
  Get.lazyPut(() => CartController(cartRepository: Get.find()));
}
