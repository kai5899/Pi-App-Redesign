import 'dart:ui';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/Palette.dart';
import 'package:pie_redesigned/Views/HomePageView.dart';
import 'package:splash_package/splash_package.dart';

import 'Config/fonts.dart';
import 'Controllers/AppController.dart';
import 'Views/ChatsView.dart';
import 'Views/EarningTeamView.dart';
import 'Views/SecurityCircleView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final AppController appController = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color6,
            color4,
            color3,
            color2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          brightness: Brightness.dark,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: EasyRichText(
            "89.4649 𝝿",
            defaultStyle: montserratStyle(
                color: Colors.orange, size: 24, weight: FontWeight.w700),
            patternList: [
              EasyRichTextPattern(
                targetString: '4649 𝝿',
                superScript: true,
                style: montserratStyle(
                    color: Colors.orange, size: 28, weight: FontWeight.w700),
              ),
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: Container(
            height: Get.height,
            width: Get.width,
            child: PageView(
              // onPageChanged: (i) {
              //   appController.updateIndex(i);
              // },
              controller: appController.pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                HomePageView(),
                EarningTeamView(),
                SecurityCircleView(),
                ChatsView(),
              ],
            )),
        floatingActionButton: GetBuilder(
          init: AppController(),
          builder: (AppController controller) => Splash(
            splashColor: Colors.orange,
            onTap: () {
              controller.updateMiningStatus();
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.startMining
                    ? Colors.green[800]
                    : Colors.red[800],
              ),
              child: GlassContainer(
                  blur: 10,
                  shape: BoxShape.circle,
                  // isFrostedGlass: true,
                  height: 60,
                  width: 60,
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withOpacity(0.40),
                      Colors.white.withOpacity(0.10)
                    ],
                  ),
                  borderColor: Colors.transparent,
                  child: Image.asset("assets/icons/pi.png")),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: GetBuilder(
          init: AppController(),
          builder: (AppController controller) {
            return AnimatedBottomNavigationBar(
                leftCornerRadius: 36,
                rightCornerRadius: 36,
                icons: [
                  Icons.home_outlined,
                  Icons.people_alt,
                  Icons.security,
                  Icons.chat,
                ],
                activeIndex: controller.currentTabIndex,
                height: 70,
                iconSize: 34,
                gapLocation: GapLocation.center,
                notchSmoothness: NotchSmoothness.smoothEdge,
                activeColor: color6,
                inactiveColor: Colors.blueGrey,
                onTap: (index) => controller.updateIndex(index));
          },
        ),
      ),
    );
  }
}
