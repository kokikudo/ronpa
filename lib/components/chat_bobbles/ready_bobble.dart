import 'package:flutter/material.dart';

import 'package:ronpa/constraints.dart';

class ReadyBubble extends StatelessWidget {
  const ReadyBubble({Key? key, required this.userIcon, required this.isMe})
      : super(key: key);

  final Icon userIcon;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: isMe ? TextDirection.ltr : TextDirection.rtl,
        children: [
          userIcon,
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isMe ? kBlue : kRed,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: isMe ? Radius.zero : Radius.circular(10),
                bottomRight: isMe ? Radius.circular(10) : Radius.zero,
              ),
            ),
            child: Column(
              children: [
                Icon(Icons.check, color: Colors.white, size: 30),
                Text(
                  '準備OK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
