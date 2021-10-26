import 'package:dwaf_hobbysir/src/repository/shop_repository.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ShopRepository());
  }
}