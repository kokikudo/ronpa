import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {Key? key,
      required this.text,
      required this.userIcon,
      required this.isMe})
      : super(key: key);

  final String text;
  final Icon userIcon;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: isMe ? TextDirection.ltr : TextDirection.rtl,
        children: [
          userIcon,
          SizedBox(width: 10),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: screenWidth * 0.7,
            ),
            child: Container(
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
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
