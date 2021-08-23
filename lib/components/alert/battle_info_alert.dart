import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/components/alert/alert_container.dart';

Alert BattleInfoAlert(BuildContext context, String themeText, String infoText,
    String personText, int time) {
  final _textTheme = Theme.of(context).textTheme;
  return Alert(
    context: context,
    title: '対戦情報',
    content: AlertContainer(
      color: Colors.white,
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('テーマ', style: _textTheme.caption),
          Text('テーマ', style: _textTheme.bodyText2),
          SizedBox(height: 20),
          Text('詳細', style: _textTheme.caption),
          Text(infoText, style: _textTheme.bodyText2),
          SizedBox(height: 20),
          Text('希望相手', style: _textTheme.caption),
          Text('$personText な人', style: _textTheme.bodyText2),
          SizedBox(height: 20),
          Text('制限時間', style: _textTheme.caption),
          Text('$time 秒', style: _textTheme.bodyText2),
        ],
      ),
    ),
    buttons: [
      DialogButton(
        onPressed: () {},
        child: Text(
          '試合を観戦する',
          style: TextStyle(color: kBlue),
        ),
        color: Colors.white,
      ),
      DialogButton(
        onPressed: () {},
        child: Text(
          '対戦する',
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
