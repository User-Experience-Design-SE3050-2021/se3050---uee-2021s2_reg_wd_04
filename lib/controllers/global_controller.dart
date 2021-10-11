import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  int selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void onTapped(int index) {
    selectedIndex = index;
    update();
  }

  void changeScaffoldKey(GlobalKey scaffoldKey) {
    scaffoldKey = scaffoldKey;
  }
}
