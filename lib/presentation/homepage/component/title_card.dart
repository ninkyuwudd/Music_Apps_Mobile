import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 4,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        // width: MediaQuery.of(context).size.width,
        // height: 100,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                  color: Colors.black12)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: SafeArea(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Author Name,"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Albums"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Music Title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
    // return LayoutBuilder(builder: (context, constraint) {
    //   final parentWidth = constraint.maxWidth;
    //   final parentHeight = constraint.maxHeight;
    //   return Container(
    //     width: parentWidth * 0.6,
    //     height: parentHeight * 0.4,
    //     decoration: BoxDecoration(
    //         color: Color(0xffB9E5E8), borderRadius: BorderRadius.circular(20)),
    //     child: Column(
    //       children: [Text("Music Title"), Text("Author Name"), Text("Albums")],
    //     ),
    //   );
    // });
  }
}
