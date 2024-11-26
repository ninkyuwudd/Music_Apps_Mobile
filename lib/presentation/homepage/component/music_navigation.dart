import 'package:flutter/material.dart';
import 'package:frontend_animated_apps/presentation/shared/custom_circle_button.dart';

class MusicNavigation extends StatefulWidget {
  final bool isPlaying;
  final Function() play;
  final Function() pause;
  const MusicNavigation(
      {super.key,
      required this.isPlaying,
      required this.play,
      required this.pause});

  @override
  State<MusicNavigation> createState() => _MusicNavigationState();
}

class _MusicNavigationState extends State<MusicNavigation> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xff7AB2D3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(2, 2))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCircleButton(
              iconButton: Icons.skip_previous,
              onPressed: 
                widget.isPlaying ? widget.pause : widget.play
              ,
            ),
            CustomCircleButton(
              iconButton: Icons.play_arrow,
              onPressed: () {},
            ),
            CustomCircleButton(
              iconButton: Icons.skip_next,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
