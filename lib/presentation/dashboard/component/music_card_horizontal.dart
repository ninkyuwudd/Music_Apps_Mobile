import 'package:flutter/material.dart';
import 'package:frontend_animated_apps/core/theme/text_theme.dart';

class MusciCardHorizontal extends StatelessWidget {
  final String title;
  final String byWho;
  final String coverLink;
  const MusciCardHorizontal(
      {super.key,
      required this.title,
      required this.byWho,
      required this.coverLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              coverLink,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  );
                }
              },
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: AppsTextTheme.body2.copyWith(fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            byWho,
            style: AppsTextTheme.body4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
