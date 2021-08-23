import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';

class Bobble extends StatelessWidget {
  const Bobble(
      {Key? key,
      required this.bobbleText,
      required this.backgroundColor,
      required this.onPressed,
      this.height = 40,
      this.width = 150})
      : super(key: key);

  final double height;
  final double width;
  final Function onPressed;
  final Color backgroundColor;
  final String bobbleText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        padding: const EdgeInsets.all(10),
        shape: StadiumBorder(),
      ),
      onPressed: () => onPressed(),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Text(bobbleText),
        ),
      ),
    );
  }
}
