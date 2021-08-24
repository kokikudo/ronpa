import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//Colors
Color kRed = Color(0xffea6257);
Color kBlue = Color(0xff4167c1);
Color kLightBlue = Color(0xffdce3f8);
Color kInkColor = Colors.grey.withAlpha(30);
Color kOrange = Color(0xffFF8B01);
Color kGray = Color(0xffE4E4E4);
Color kOpponentChatColor = Color(0xff8E8E8E);

//Spinner
const kWaitingSpinner = SpinKitPouringHourglass(color: Color(0xffE4E4E4));

//Bobble Style
BoxShadow kBubbleShadowStyle() {
  return const BoxShadow(
    color: Colors.grey,
    offset: Offset(0, 15),
    blurRadius: 30.0,
    spreadRadius: -10,
  );
}

LinearGradient kBubbleGradient(Color topLeftColor, Color bottomRightColor) {
  return LinearGradient(
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight,
      colors: [
        topLeftColor,
        bottomRightColor,
      ],
      stops: const [
        0.0,
        1.0,
      ]);
}

//TextField decoration
InputDecoration kCreateRoomInputFormDeco(
    bool isTimePick, int? maxLength, String? suffixText) {
  return InputDecoration(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 3),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 3),
    ),
    helperText: isTimePick ? null : '最大$maxLength文字',
    helperStyle: TextStyle(color: Colors.grey),
    suffixText: suffixText,
    suffixStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 8),
  );
}
