import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopInfo {
  String title;
  String address;
  bool isParking;
  LatLng latLng;

  ShopInfo({required this.title,required this.address, required this.isParking, required this.latLng});
}

List<ShopInfo> testShopList = [
  ShopInfo(
    title: 'Home',
    address: '부산광역시 남구 대연동 875-21',
    isParking: false,
    latLng: LatLng(35.132369499264755, 129.09230978948023),
  ),
  ShopInfo(
    title: 'MasanHome',
    address: '경상남도 창원시 마산회원구 구암남 16길 54',
    isParking: false,
    latLng: LatLng(35.249336306317765, 128.6007908310984),
  ),
];
