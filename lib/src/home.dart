import 'package:dwaf_hobbysir/src/page/shop_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => ShopInfoPage(index: 0));
              },
              child: Container(
                height: 100,
                child: Center(
                  child: Text('Home'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ShopInfoPage(index: 1));
              },
              child: Container(
                height: 100,
                child: Center(
                  child: Text('Home1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
