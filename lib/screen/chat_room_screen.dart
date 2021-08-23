import 'package:flutter/material.dart';
import 'package:ronpa/components/bobble_button.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/components/alert/leaving_alert.dart';
import 'package:ronpa/components/chat_bobbles/normal_bobble.dart';
import 'package:ronpa/components/chat_bobbles/ready_bobble.dart';
import 'package:ronpa/components/chat_bobbles/message_bobble.dart';
import 'package:ronpa/components/gong_image.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ///TODO　対戦情報表示
          },
          icon: Icon(Icons.info),
        ),
        actions: [
          Row(
            children: [Icon(Icons.timer), Text('時間')],
          ),
          SizedBox(width: 10),
          Row(
            children: [Icon(Icons.person, color: kOrange), Text('人数')],
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {
              ///TODO 退出アラート
              LeavingAlert(context).show();
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/backgroundImage.jpg'),
              fit: BoxFit.fitHeight),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NormalBobble(
                contents: Text('てっすと'),
              ),
              ReadyBubble(userIcon: Icon(Icons.email), isMe: true),
              ReadyBubble(userIcon: Icon(Icons.g_translate), isMe: false),
              GongImage(isFinish: false),
              MessageBubble(
                  text: 'きも', userIcon: Icon(Icons.email), isMe: true),
              MessageBubble(
                  text: 'なんなのなんなのなんなのなんなのなんなのなんなのなんなのなんなのなんなのなんなのなんなのなんなの',
                  userIcon: Icon(Icons.g_translate),
                  isMe: false),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: kLightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        maxLines: null,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '100文字まで',
                          hintStyle: TextStyle(color: kBlue),
                          suffixIcon: Bobble(
                              height: 20,
                              width: 50,
                              backgroundColor: kBlue,
                              bobbleText: 'Ronpa!',
                              onPressed: () {}),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
