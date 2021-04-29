import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:pie_redesigned/Config/fonts.dart';

class SecurityCircleView extends StatelessWidget {
  const SecurityCircleView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Your Security Circle",
              style: montserratStyle(
                  color: Colors.white, size: 24, weight: FontWeight.w600),
            ),
          ),
        ),
        GlassContainer(
          height: 180,
          width: 180,
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.40),
              Colors.white.withOpacity(0.10)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          blur: 15.0,
          elevation: 0,
          borderColor: Colors.white,
          padding: EdgeInsets.all(10),
          child: AnimatedContainer(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 12, color: Colors.green),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.white.withOpacity(0.3),
                  )
                ]),
            duration: Duration(milliseconds: 500),
            child: GlassContainer(
              height: 200,
              width: 100,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.40),
                  Colors.white.withOpacity(0.10)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              blur: 15.0,
              elevation: 50,
              borderColor: Colors.white,
              child: Center(
                child: Text(
                  "Strong\n+0.1 𝝿/h",
                  textAlign: TextAlign.center,
                  style: montserratStyle(
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 16),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Your Contribution to the\nNetwork security",
              textAlign: TextAlign.center,
              style: montserratStyle(
                color: Colors.white.withOpacity(0.7),
                size: 18,
              ),
            ),
          ),
        ),
        ListTile(
          trailing: Icon(
            Icons.person_add,
            color: Colors.orange,
            size: 36,
          ),
        ),
        // Divider(
        //   thickness: 1,
        //   color: Colors.orange,
        //   indent: Get.width * 0.10,
        //   endIndent: Get.width * 0.10,
        // ),
        Expanded(
            child: GridView.count(
          physics: BouncingScrollPhysics(),
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
          children: List.generate(6, (index) {
            return GlassContainer(
              height: 250,
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
                    Icons.person_outline_sharp,
                    size: 70,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "@UserName",
                    style: montserratStyle(color: Colors.white, size: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            );
          }),
        ))
      ],
    );
  }
}
