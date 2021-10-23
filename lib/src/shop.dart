import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopInfo {
  String title;
  LatLng latLng;

  ShopInfo({required this.title, required this.latLng});
}

List<ShopInfo> testShopList = [
  ShopInfo(
    title: 'Home',
    latLng: LatLng(35.132369499264755, 129.09230978948023),
  ),
  ShopInfo(
    title: 'MasanHome',
    latLng: LatLng(35.249336306317765, 128.6007908310984),
  ),
];
