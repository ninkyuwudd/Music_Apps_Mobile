import 'package:flutter/material.dart';

class MusicRunningDisplay extends StatelessWidget {
  const MusicRunningDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Text("03:12"),
        Positioned(
          left: -190,
          top: 75,
          height: 400,
          width: 400,
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      color: Colors.black12,
                      offset: Offset(2, 2))
                ],
                border: Border.all(width: 8, color: const Color(0xffBBE6E8)),
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: -220,
          top: 45,
          height: 470,
          width: 470,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 8, color: const Color.fromARGB(255, 241, 110, 101)),
                shape: BoxShape.circle),
          ),
        ),
        // Positioned(
        //   left: -150,
        //   top: 25,
        //   height: 500,
        //   width: 500,
        //   child: Container(
        //     decoration: BoxDecoration(
        //         border: Border.all(
        //             width: 8, color: const Color.fromARGB(255, 241, 110, 101)),
        //         shape: BoxShape.circle),
        //   ),
        // ),
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
