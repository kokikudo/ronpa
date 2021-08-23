import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({
    Key? key,
    required this.labelName,
    required this.errorMessage,
  }) : super(key: key);

  final String labelName;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        labelText: labelName,
        errorText: errorMessage,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        //labelStyle: kSignInTextFieldLabelStyle,
      ),
    );
  }
}
