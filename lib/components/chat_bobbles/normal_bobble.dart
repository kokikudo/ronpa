import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';

class NormalBobble extends StatelessWidget {
  const NormalBobble({
    Key? key,
    required this.contents,
  }) : super(key: key);

  final Widget contents;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: kGray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: contents,
    );
  }
}
