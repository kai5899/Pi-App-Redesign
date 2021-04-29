import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/fonts.dart';

class AppsWidget extends StatelessWidget {
  const AppsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: Get.width * 0.55,
      width: Get.width * 0.45,
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
          Icon(
            Icons.apps,
            size: 70,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "App Name",
            style: montserratStyle(color: Colors.white, size: 18),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
