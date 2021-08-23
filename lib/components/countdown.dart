import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';

Future<void> showCountdownTimer(BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) => Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'スタートまで',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          TimeCircularCountdown(
            unit: CountdownUnit.second,
            countdownTotal: 5,
            onFinished: () => Navigator.pop(context),
            textStyle: TextStyle(color: Colors.white, fontSize: 30),
            gapFactor: 10,
            strokeWidth: 10,
          ),
        ],
      ),
    ),
  );
}
