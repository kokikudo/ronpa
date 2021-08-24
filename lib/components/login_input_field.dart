import 'package:flutter/material.dart';
import 'package:ronpa/constraints.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({
    Key? key,
    required this.errorMessage,
    required this.title,
  }) : super(key: key);

  final String title;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black54),
      cursorColor: Colors.black54,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        focusColor: kOrange,
        fillColor: Colors.white,
        filled: true,
        helperText: title,
        helperStyle: TextStyle(color: Colors.white),
        errorText: errorMessage,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        //labelStyle: kSignInTextFieldLabelStyle,
      ),
    );
  }
}
