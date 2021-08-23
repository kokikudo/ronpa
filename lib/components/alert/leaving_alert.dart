import 'package:flutter/material.dart';
import 'package:ronpa/components/alert/alert_container.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ronpa/constraints.dart';

Alert LeavingAlert(BuildContext context) {
  final _textTheme = Theme.of(context).textTheme;
  return Alert(
    context: context,
    title: '退出しますか？',
    buttons: [
      DialogButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          'いいえ',
          style: TextStyle(color: kBlue, fontWeight: FontWeight.bold),
        ),
        color: Colors.white,
      ),
      DialogButton(
        onPressed: () {},
        child: Text(
          'はい',
          style: TextStyle(color: kBlue),
        ),
        color: Colors.white,
      ),
    ],
    style: AlertStyle(
      animationType: AnimationType.grow,
      isCloseButton: false,
    ),
  );
}
