import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt currentPageIndex = 0.obs;

  void setPageIndex(int index){
    currentPageIndex(index);
  }
}