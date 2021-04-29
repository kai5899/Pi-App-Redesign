import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  bool startMining = false;
  int currentTabIndex = 0;

  PageController pageController;
  @override
  onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentTabIndex);
  }

  updateIndex(int i) {
    currentTabIndex = i;
    pageController.animateToPage(i,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    update();
  }

  updateMiningStatus() {
    startMining = !startMining;
    update();
  }
}
