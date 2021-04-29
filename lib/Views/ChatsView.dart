import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/Palette.dart';
import 'package:pie_redesigned/Config/fonts.dart';
import 'package:pie_redesigned/Widgets/ChatSectionWidget.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chats",
                style: montserratStyle(
                    color: Colors.white, size: 24, weight: FontWeight.bold),
              ),
              Chip(
                  backgroundColor: Colors.white,
                  label: Text(
                    "Search 🔍",
                    style: montserratStyle(
                      color: color2,
                      size: 18,
                    ),
                  )),
            ],
          ),
        ),
        Padding(
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
                  Icons.search,
                  size: 36,
                  color: color1,
                ),
                title: Text(
                  "Frequently Asked Questions",
                  style: montserratStyle(
                      color: color1, size: 18, weight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Click to go to FAQ Page",
                  style: montserratStyle(
                    color: color1.withOpacity(0.7),
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.amber,
          indent: Get.width * 0.10,
          endIndent: Get.width * 0.10,
        ),
        ChatSectionWidget(
          title: "General (English)",
          message: "@user : lorem ipsum..",
        ),
        ChatSectionWidget(
          title: "Pioneers (English)",
          message: "@user : lorem ipsum..",
        ),
        ChatSectionWidget(
          title: "Announcement",
          message: "@user : lorem ipsum..",
        )
      ],
    );
  }
}
