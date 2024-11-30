import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:frontend_animated_apps/core/theme/text_theme.dart';
import 'package:frontend_animated_apps/presentation/dashboard/component/music_card.dart';
import 'package:frontend_animated_apps/presentation/dashboard/component/music_card_horizontal.dart';

class MusicSection extends StatelessWidget {
  final String headingTitle;
  final bool isHorizontal;
  const MusicSection(
      {super.key, required this.headingTitle, this.isHorizontal = false});

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
              scrollDirection: isHorizontal ? Axis.vertical : Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                width: isHorizontal ? 0 : 10,
                height: isHorizontal ? 10 : 0,
              ),
              itemBuilder: (context, index) {
                return isHorizontal
                    ? MusciCardHorizontal(
                        coverLink:
                            "https://upload.wikimedia.org/wikipedia/id/c/c9/Linkin_park_hybrid_theory.jpg",
                        title: "Hybird Theory",
                        byWho: "linkin Park",
                      )
                    : MusciCard(
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
