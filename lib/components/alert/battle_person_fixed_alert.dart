import 'package:flutter/material.dart';
import 'package:ronpa/components/alert/alert_container.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ronpa/constraints.dart';

Alert BattlePersonFixedAlert(BuildContext context) {
  final _textTheme = Theme.of(context).textTheme;
  return Alert(
    context: context,
    title: 'すでに対戦者が決定しています。',
    buttons: [
      DialogButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          'OK',
          style: TextStyle(color: kBlue, fontWeight: FontWeight.bold),
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
