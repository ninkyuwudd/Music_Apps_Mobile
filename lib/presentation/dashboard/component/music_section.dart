import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:frontend_animated_apps/core/theme/text_theme.dart';
import 'package:frontend_animated_apps/presentation/dashboard/component/music_card.dart';

class MusicSection extends StatelessWidget {
  final String headingTitle;
  const MusicSection({super.key, required this.headingTitle});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 11,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headingTitle,
            style: AppsTextTheme.heading4.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) {
                return MusciCard(
                  coverLink:
                      "https://upload.wikimedia.org/wikipedia/id/c/c9/Linkin_park_hybrid_theory.jpg",
                  title: "Hybird Theory",
                  byWho: "linkin Park",
                );
              },
              itemCount: 3,
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
