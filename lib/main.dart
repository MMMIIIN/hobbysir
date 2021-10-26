import 'package:dwaf_hobbysir/src/binding/init_binding.dart';
import 'package:dwaf_hobbysir/src/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Google Maps Demo',
      initialBinding: InitBinding(),
      home: App(),
    );
  }
}