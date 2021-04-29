import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_redesigned/Config/fonts.dart';
import 'package:pie_redesigned/Widgets/AppsWidget.dart';
import 'package:pie_redesigned/Widgets/NewsWidget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rate",
                  style: montserratStyle(
                      color: Colors.white, size: 24, weight: FontWeight.bold),
                ),
                Text(
                  "+0.2 𝝿/h",
                  style: montserratStyle(
                    color: Colors.amber,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Pi News",
              style: montserratStyle(
                  color: Colors.white, size: 24, weight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: Get.height * 0.3,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: List.generate(3, (index) => NewsWidget()),
          ),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pi Apps",
                style: montserratStyle(
                    color: Colors.white, size: 24, weight: FontWeight.bold),
              ),
              Text(
                "see more..",
                style: montserratStyle(
                  color: Colors.white.withOpacity(0.7),
                  size: 18,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [AppsWidget(), AppsWidget()],
          ),
        ),
      ],
    );
  }
}
