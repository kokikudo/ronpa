import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';

class TileCard extends StatelessWidget {
  const TileCard(
      {Key? key,
      required this.themeText,
      required this.spectators,
      required this.userIcon,
      required this.userName})
      : super(key: key);

  final String themeText;
  final int spectators;
  final Icon userIcon;
  final String userName;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        splashColor: kInkColor,
        onTap: () {
          print('Tapped');
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: SizedBox()),
                Text(
                  'テーマ',
                  style: _textTheme.subtitle1,
                ),
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Icon(Icons.person, color: kOrange),
                    Text('人数', style: _textTheme.caption),
                    SizedBox(width: 20),
                    Icon(Icons.photo),
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          'ユーザー名ユーザー名ユーザー名ユーザー名',
                          style: _textTheme.caption,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
