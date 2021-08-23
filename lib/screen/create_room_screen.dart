import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:ronpa/components/bobble_button.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  String theme = '';
  String details = '';
  String characteristics = '';
  int hour = 0;
  int minute = 3;
  int second = 0;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: Text('部屋を作成する'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CreateRoomInputFormContainer(
              child: Column(
                children: [
                  Text('議論テーマを決めてください', style: _textTheme.headline6),
                  TextField(
                    maxLength: 30,
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: kCreateRoomInputFormDeco(false, 30, null),
                    onSubmitted: (value) {
                      setState(() {
                        theme = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            CreateRoomInputFormContainer(
              child: Column(
                children: [
                  Text('詳細を入力してください', style: _textTheme.headline6),
                  TextField(
                    maxLength: 100,
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: kCreateRoomInputFormDeco(false, 100, null),
                    onSubmitted: (value) {
                      setState(() {
                        details = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            CreateRoomInputFormContainer(
              child: Column(
                children: [
                  Text('どのような考えを持った方と対戦したいですか？', style: _textTheme.headline6),
                  TextField(
                    maxLength: 30,
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: kCreateRoomInputFormDeco(false, 30, 'な方'),
                    onSubmitted: (value) {
                      setState(() {
                        characteristics = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            CreateRoomInputFormContainer(
              child: Column(
                children: [
                  Text('制限時間', style: _textTheme.headline6),
                  Column(
                    children: [
                      Text(
                        '$hour時間$minute分$second秒',
                        style: _textTheme.headline5,
                      ),
                      TextButton(
                        onPressed: () {
                          Picker(
                              adapter: NumberPickerAdapter(data: [
                                NumberPickerColumn(begin: 0, end: 24),
                                NumberPickerColumn(begin: 0, end: 60),
                                NumberPickerColumn(begin: 0, end: 60),
                              ]),
                              hideHeader: true,
                              title: Text(
                                "時間を設定してください",
                                style: TextStyle(color: Colors.blue),
                              ),
                              onConfirm: (Picker picker, List value) {
                                setState(() {
                                  hour = value[0];
                                  minute = value[1];
                                  second = value[2];
                                });
                                print(value.toString());
                                print(picker.getSelectedValues());
                              }).showDialog(context);
                        },
                        child: Text(
                          '設定する',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Bobble(
                bobbleText: '作成する',
                onPressed: () {
                  ///TODO 以下の作業をProviderで定義する
                  ///入力漏れがないか確認
                  ///制限時間が3分以上あるか確認
                  ///対戦情報をデータモデル化しリストに追加する
                },
                backgroundColor: kBlue)
          ],
        ),
      ),
    );
  }
}

class CreateRoomInputFormContainer extends StatelessWidget {
  const CreateRoomInputFormContainer({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
      ),
      child: child,
    );
  }
}
