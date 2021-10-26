import 'package:dwaf_hobbysir/src/data/shop_result.dart';
import 'package:get/get.dart';

class ShopRepository extends GetConnect{
  static ShopRepository get to => Get.find();

  Future<ShopResult> loadShop() async {
    String url = "http://localhost:3000/shop/list";
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else{
      if(response.statusCode == 200){
        return ShopResult.fromJson(response.body);
      }
      return Future.error(response.statusText!);
    }
  }
}