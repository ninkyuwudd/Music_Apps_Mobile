import 'package:flutter/material.dart';

class MusicRunningDisplay extends StatelessWidget {
  const MusicRunningDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Text("03:12"),
        Positioned(
          left: -180,
          top: 90,
          height: 370,
          width: 370,
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: -210,
          top: 65,
          height: 420,
          width: 420,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 8, color: const Color.fromARGB(255, 241, 110, 101)),
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: -175,
          top: 100,
          height: 350,
          width: 350,
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 68, 68, 68),
                shape: BoxShape.circle),
            child: Center(
              child: Transform.translate(
                offset: Offset(40, 0),
                child: Text(
                  "03:20",
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
