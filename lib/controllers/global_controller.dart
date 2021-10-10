import 'package:get/get.dart';

class GlobalController extends GetxController {
  int selectedIndex = 0;

  void onTapped(int index) {
    selectedIndex = index;
    update();
  }
}
