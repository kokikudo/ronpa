import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/components/alert/alert_container.dart';

Alert UserInfoAlert(BuildContext context, Icon userIcon, String userName,
    int winCount, int loseCount, int drawCount) {
  final _textTheme = Theme.of(context).textTheme;
  return Alert(
    context: context,
    title: 'ユーザー情報',
    content: AlertContainer(
      color: Colors.white,
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          userIcon,
          SizedBox(height: 20),
          Text('ユーザー名', style: _textTheme.caption),
          Text(userName, style: _textTheme.bodyText2),
          SizedBox(height: 20),
          Text('戦績', style: _textTheme.caption),
          Text('$winCount勝 $loseCount敗 $drawCount分',
              style: _textTheme.bodyText2),
        ],
      ),
    ),
    buttons: [
      DialogButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          '閉じる',
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
