import 'package:flutter/material.dart';
import 'package:frontend_animated_apps/core/route/routes.dart';
import 'package:frontend_animated_apps/presentation/dashboard/component/music_section.dart';
import 'package:frontend_animated_apps/utils/images.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppsImages.appbarLogo,
          width: 180,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xffDFF2EB), const Color(0xff4A628A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MusicSection(
                  headingTitle: "Albums",
                ),
                MusicSection(headingTitle: "My Music"),
                MusicSection(
                  headingTitle: "Recent",
                  isHorizontal: true,
                ),
                MusicSection(headingTitle: "Playlist"),
              ],
            )),
      ),
    );
  }
}
