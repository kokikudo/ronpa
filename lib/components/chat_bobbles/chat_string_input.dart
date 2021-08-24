import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/components/bobble_button.dart';

class ChatStringInputField extends StatelessWidget {
  const ChatStringInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              cursorColor: kBlue,
              style: TextStyle(color: kBlue),
              decoration: InputDecoration(
                border: InputBorder.none,
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
    );
  }
}
