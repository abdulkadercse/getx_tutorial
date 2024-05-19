// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/home_screen.dart';

class NavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screen = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.orange,
    ),
  ];
}