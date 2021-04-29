import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/fonts.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({this.title, this.count});

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: Get.height * 0.15,
      width: Get.width * 0.3,
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.40),
          Colors.white.withOpacity(0.10)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      blur: 15.0,
      borderWidth: 0.5,
      elevation: 3.0,
      isFrostedGlass: false,
      borderColor: Colors.transparent,
      shadowColor: Colors.black.withOpacity(0.20),
      alignment: Alignment.center,
      frostedOpacity: 0.1,
      borderRadius: BorderRadius.circular(36),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${title.capitalizeFirst}",
            style: montserratStyle(
                color: Colors.white, size: 18, weight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text("$count",
              style: montserratStyle(
                  color: Colors.white.withOpacity(0.7),
                  size: 18,
                  weight: FontWeight.w700))
        ],
      ),
    );
  }
}
