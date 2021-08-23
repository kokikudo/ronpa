import 'package:flutter/material.dart';

class AlertContainer extends StatelessWidget {
  const AlertContainer(
      {Key? key, required this.color, required this.childWidget})
      : super(key: key);

  final Color color;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: childWidget,
    );
  }
}
