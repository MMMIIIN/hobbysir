import 'package:dwaf_hobbysir/src/data/shop_result.dart';
import 'package:dwaf_hobbysir/src/home_controller.dart';
import 'package:dwaf_hobbysir/src/page/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final HomeController _homeController = Get.put(HomeController());

class Home extends StatelessWidget {
  ShopResult shopResult = ShopResult(shops: []);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch(_homeController.currentPageIndex.value){
          case 0:
            return HomePage();
          case 1:
            return EmptyPage1();
          case 2:
            return EmptyPage2();
          case 3:
            return EmptyPage2();
          default:
            return Container();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _homeController.currentPageIndex.value,
        onTap: (index){
          _homeController.setPageIndex(index);
        },
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
                _homeController.currentPageIndex.value == 0 ? Icons.home : Icons.home_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'empty1',
              icon: Icon(
                _homeController.currentPageIndex.value == 1 ? Icons.circle : Icons.circle,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'empty2',
              icon: Icon(
                _homeController.currentPageIndex.value == 2 ? Icons.circle : Icons.circle,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(
                _homeController.currentPageIndex.value == 3 ? Icons.settings : Icons.settings_outlined,
                color: Colors.black,
              )),
        ],
      ),
      ),
    );
  }
}

class EmptyPage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Empty1 Page'),
    );
  }
}

class EmptyPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Empty2 Page'),
    );
  }
}
