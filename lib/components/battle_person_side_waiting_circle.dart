import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void ShowBattlePersonSideWaitingCircle() {
  // EasyLoadingの設定
  EasyLoading.instance
    //..displayDuration = const Duration(seconds: 2)
    ..indicatorType = EasyLoadingIndicatorType.pulse
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 60.0;
  //..radius = 10.0
  //..progressColor = Colors.yellow
  //..backgroundColor = Colors.green
  //..indicatorColor = Colors.yellow
  //..textColor = Colors.yellow
  //..maskColor = Colors.black;
  //..userInteractions = true
  //..dismissOnTap = false;

  EasyLoading.show(
    status: '観戦者が投票中です。',
  );

  ///TODO 投票が終わるまで待機する処理をかく
  EasyLoading.dismiss();
}
