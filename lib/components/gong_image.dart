import 'package:flutter/material.dart';

class GongImage extends StatelessWidget {
  const GongImage({Key? key, required this.isFinish}) : super(key: key);

  final bool isFinish;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: isFinish
          ? Image.asset(
              'assets/images/finishGong.png',
              fit: BoxFit.contain,
            )
          : Image.asset(
              'assets/images/startGong.png',
              fit: BoxFit.contain,
            ),
    );
  }
}
