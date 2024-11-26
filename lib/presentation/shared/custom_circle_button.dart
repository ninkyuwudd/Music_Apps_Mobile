import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final IconData iconButton;
  final Function() onPressed;
  const CustomCircleButton({super.key, required this.iconButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 15,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: Colors.black12,
                    offset: Offset(2, 2))
              ]),
          child: Icon(iconButton),
        ),
      ),
    );
  }
}
