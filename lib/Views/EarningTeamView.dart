import 'package:flutter/material.dart';
import 'package:pie_redesigned/Config/Palette.dart';
import 'package:pie_redesigned/Config/fonts.dart';
import 'package:pie_redesigned/Widgets/InfoTab.dart';

class EarningTeamView extends StatelessWidget {
  const EarningTeamView({Key key}) : super(key: key);

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
                "Earning Team",
                style: montserratStyle(
                    color: Colors.white, size: 24, weight: FontWeight.bold),
              ),
              Chip(
                  backgroundColor: Colors.white,
                  label: Text(
                    "Ping Inactive 🔔",
                    style: montserratStyle(
                      color: color2,
                      size: 18,
                    ),
                  )),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InfoTab(
              title: "Invited",
              count: "0",
            ),
            InfoTab(
              title: "members",
              count: "10",
            ),
            InfoTab(
              title: "active",
              count: "5",
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Members",
                style: montserratStyle(
                    color: Colors.white, size: 24, weight: FontWeight.bold),
              ),
              Chip(
                  backgroundColor: Colors.white,
                  label: Text(
                    "invite +",
                    style: montserratStyle(
                      color: color2,
                      size: 18,
                    ),
                  )),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: 10,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text(
                      "@username",
                      style: montserratStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: index == 0
                        ? Text(
                            "invited you",
                            style: montserratStyle(
                                color: Colors.white.withOpacity(0.7),
                                size: 12,
                                weight: FontWeight.w700),
                          )
                        : null,
                    trailing: index % 2 == 0
                        ? CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                          )
                        : null);
              },
            ),
          ),
        )
      ],
    );
  }
}
