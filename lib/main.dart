import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ronpa/components/countdown.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/screen/registration_screen.dart';
import 'package:ronpa/screen/room_list_screen.dart';
import 'package:ronpa/screen/welcome_screen.dart';
import 'components/login_input_field.dart';
import 'components/registration_user_name.dart';
import 'components/registration_password.dart';
import 'components/bobble_button.dart';
import 'components/card.dart';
import 'components/alert/battle_info_alert.dart';
import 'components/alert/alert_container.dart';
import 'components/alert/battle_person_fixed_alert.dart';
import 'components/alert/leaving_alert.dart';
import 'components/battle_person_side_waiting_circle.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'components/alert/user_info_alert.dart';
import 'components/alert/battle_info_alert_on_chat_screen.dart';
import 'screen/create_room_screen.dart';
import 'screen/chat_room_screen.dart';
import 'components/alert/result_alert.dart';
import 'screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

///TODO 作業前にブランチを切ること

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _buildAppTheme(),
      builder: EasyLoading.init(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        RoomListScreen.id: (context) => RoomListScreen(),
        CreateRoomScreen.id: (context) => CreateRoomScreen(),
      },
    );
  }
}

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    /// TODO
    /// テキスト以外のテーマは必要な時に考える
    appBarTheme: base.appBarTheme.copyWith(
      color: Colors.black,
    ),
    // colorScheme: base.colorScheme.copyWith(
    //   primary: kcLightBlue,
    //   onPrimary: kcLightGray,
    // ),
    //cardTheme: _buildCardTheme(base.cardTheme),
    textTheme: _buildTextTheme(base.textTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline2: base.headline2!.copyWith(fontFamily: 'RocknRollOne'),
    // アプリタイトル
    headline5: base.headline5!.copyWith(color: Colors.white),
    // 部屋作成ページのタイトル
    headline6: base.headline6!.copyWith(color: Colors.white),
    // スタートまでのカウントダウン
    bodyText1: base.bodyText1!.copyWith(color: Colors.white),
    // 本文(黒)
    bodyText2: base.bodyText2!.copyWith(color: Colors.black),
    // 本文(白)
    subtitle1: base.subtitle1!.copyWith(),
    // カードのタイトル
    subtitle2: base.subtitle2!.copyWith(),
    button: base.button!.copyWith(color: Colors.white),
    // ボタンテキスト
    caption: base.caption!.copyWith(),
    //　カードの人数とユーザ名、アラートの項目名
    overline: base.overline!.copyWith(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TestWidget(),
      ),
    );
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  bool isInputError = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () => BattlePersonFixedAlert(context).show(),
          child: Text('aaa'),
        ),
        ElevatedButton(
          onPressed: () => LeavingAlert(context).show(),
          child: Text('aaa'),
        ),
        ElevatedButton(
          onPressed: () => ShowBattlePersonSideWaitingCircle(),
          child: Text('aaa'),
        ),
        ElevatedButton(
          onPressed: () => UserInfoAlert(
                  context, Icon(Icons.ac_unit_outlined), 'kokikudo', 5, 4, 0)
              .show(),
          child: Text('aaa'),
        ),
        ElevatedButton(
          onPressed: () => BattleInfoAlertOnScreen(
                  context, 'theme', 'info', 'personText', 200)
              .show(),
          child: Text('aaa'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateRoomScreen(),
              fullscreenDialog: true,
            ),
          ),
          child: Text('aaa'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRoomScreen(),
              fullscreenDialog: true,
            ),
          ),
          child: Text('Chat Room'),
        ),
        ElevatedButton(
          onPressed: () =>
              ResultAlert(context, Icons.g_translate, 'koki', 50, 60).show(),
          child: Text('result'),
        ),
      ],
    );
  }
}
