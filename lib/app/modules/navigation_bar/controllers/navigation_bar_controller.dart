import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  //TODO: Implement NavigationBarController
  var tabIndex = 0;
  void changeTab(int idx) {
    tabIndex = idx;
    update();
  }
}
