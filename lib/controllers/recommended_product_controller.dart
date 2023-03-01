import 'package:food_kingdom/models/product_model.dart';
import 'package:get/get.dart';
import '../data/repository/recommended_product_repository.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepository recommendedProductRepository;

  RecommendedProductController({required this.recommendedProductRepository});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getRecommendProductList() async {
    Response response =
        await recommendedProductRepository.getRecommendedProductList();

    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      //print(_recommendProductList);
      _isLoading = true;
      update();
    } else {}
  }
}
