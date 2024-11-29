import 'package:flutter/material.dart';
import 'package:frontend_animated_apps/core/route/routes.dart';
import 'package:frontend_animated_apps/presentation/dashboard/component/music_section.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MusicSection(
                  headingTitle: "Albums",
                ),
                MusicSection(headingTitle: "My Music"),
                Text(
                  "Recent",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                MusicSection(headingTitle: "Playlist"),
              ],
            )),
      ),
    );
  }
}
