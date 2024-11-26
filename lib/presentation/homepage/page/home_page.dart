import 'package:flutter/material.dart';
import 'package:frontend_animated_apps/presentation/homepage/component/music_running_display.dart';
import 'package:frontend_animated_apps/presentation/homepage/component/title_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xffDFF2EB), const Color(0xffB9E5E8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TitleCard(), Expanded(child: MusicRunningDisplay())],
        ),
      ),
    );
  }
}
