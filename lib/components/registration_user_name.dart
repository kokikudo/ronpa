import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';

class RegistrationUserNameInputField extends StatelessWidget {
  const RegistrationUserNameInputField({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 20,
      style: TextStyle(color: Colors.black54),
      cursorColor: Colors.black54,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        focusColor: kOrange,
        fillColor: Colors.white,
        filled: true,
        helperText: 'ユーザー名を決めてください(20文字まで)。',
        helperStyle: TextStyle(color: Colors.white),
        errorText: errorMessage,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
