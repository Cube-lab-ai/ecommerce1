import 'package:ecom/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  Rx<int> index = 0.obs;

  void updateIndex(int value) {
    index.value = value;
  }

  Widget returnSelectedWidget() {
    return screens[index.value];
  }

  final screens = [
    HomeScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.deepOrange),
    Container(color: Colors.black),
  ];
}
