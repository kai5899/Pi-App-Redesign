import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/fonts.dart';
import 'package:splash_package/splash_package.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Splash(
        splashColor: Colors.red,
        onTap: () {},
        child: GlassContainer(
          height: Get.height * 0.3,
          width: Get.width * 0.9,
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
            children: [
              Align(
                child: Text(
                  "@PiCoreTeam",
                  style: montserratStyle(
                    color: Colors.white.withOpacity(0.7),
                    size: 14,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                child: Text(
                  "Pi day around the corner!",
                  style: montserratStyle(
                      color: Colors.white, size: 16, weight: FontWeight.bold),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the " +
                        "printing and typesetting industry. Lorem Ipsum has been the " +
                        "industry's standard dummy text ever since the 1500s, " +
                        "when an unknown printer took a galley of..",
                    style: montserratStyle(
                      color: Colors.white.withOpacity(0.9),
                      size: 14,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: Text(
                  "Feb 25 at 6:08 AM",
                  style: montserratStyle(
                    color: Colors.white.withOpacity(0.7),
                    size: 14,
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
