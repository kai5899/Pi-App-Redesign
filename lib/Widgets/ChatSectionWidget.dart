import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/Palette.dart';
import 'package:pie_redesigned/Config/fonts.dart';

class ChatSectionWidget extends StatelessWidget {
  const ChatSectionWidget({this.title, this.message});

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
      child: GlassContainer(
        height: 100,
        width: Get.width * 0.95,
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.70),
            Colors.white.withOpacity(0.60),
            Colors.white.withOpacity(0.70),
            Colors.white.withOpacity(0.60),
            Colors.white.withOpacity(0.70),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        isFrostedGlass: true,
        frostedOpacity: 0.1,
        borderRadius: BorderRadius.circular(18),
        blur: 15.0,
        borderWidth: 0.5,
        elevation: 3.0,
        borderColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.20),
        child: Center(
          child: ListTile(
            leading: Icon(
              Icons.people,
              size: 36,
              color: color1,
            ),
            title: Text(
              "$title",
              style: montserratStyle(
                  color: color1, size: 18, weight: FontWeight.bold),
            ),
            subtitle: Text(
              "$message",
              style: montserratStyle(
                color: color1.withOpacity(0.7),
                size: 18,
              ),
            ),
            trailing: Text(
              "March 3\n6:00 pm",
              style: montserratStyle(
                color: color1.withOpacity(0.7),
                size: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
