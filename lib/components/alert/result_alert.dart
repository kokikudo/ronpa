import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/components/alert/alert_container.dart';

Alert ResultAlert(BuildContext context, IconData winnerIcon, String winnerName,
    int getPollCount, int allPollCount) {
  final _textTheme = Theme.of(context).textTheme;
  return Alert(
    context: context,
    title: 'WINNER',
    content: AlertContainer(
      color: Colors.white,
      childWidget: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(winnerIcon, size: 60),
            SizedBox(height: 20),
            Text('ユーザー名',
                style: _textTheme.bodyText2, textAlign: TextAlign.center),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  '全$allPollCount票中',
                  style: _textTheme.bodyText2,
                ),
                SizedBox(width: 10),
                Text(
                  '$getPollCount票',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ],
            )
          ],
        ),
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
      DialogButton(
        onPressed: () {
          ///TODO 部屋を探すスクリーンに戻る
        },
        child: Text(
          '退出する',
          style: TextStyle(color: kBlue, fontWeight: FontWeight.bold),
        ),
        color: Colors.white,
      ),
    ],
    style: AlertStyle(
      animationType: AnimationType.grow,
      isCloseButton: false,
      titleStyle: TextStyle(
          color: Colors.red, fontSize: 30, fontFamily: 'RocknRollOne'),
    ),
  );
}
