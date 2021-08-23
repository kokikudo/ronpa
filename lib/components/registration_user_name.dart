import 'package:flutter/material.dart';

class RegistrationUserNameInputField extends StatelessWidget {
  const RegistrationUserNameInputField({
    Key? key,
    required this.isError,
  }) : super(key: key);

  final bool isError;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 20,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        labelText: 'ユーザー名',
        errorText: isError ? null : 'すでに使われています。他のユーザー名を入力してください。',
        errorMaxLines: 2,
        helperText: '最大20文字',
        contentPadding: EdgeInsets.all(20),
      ),
    );
  }
}
