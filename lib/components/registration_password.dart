import 'package:flutter/material.dart';

class RegistrationPasswordInputField extends StatefulWidget {
  const RegistrationPasswordInputField({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  final String? errorMessage;

  @override
  State<RegistrationPasswordInputField> createState() =>
      _RegistrationPasswordInputFieldState();
}

class _RegistrationPasswordInputFieldState
    extends State<RegistrationPasswordInputField> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black54),
      cursorColor: Colors.black54,
      maxLength: 12,
      obscureText: _hidePassword,
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (String? value) {
        return value!.length < 8 ? '8文字以上入力してください。' : null;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          fillColor: Colors.white,
          filled: true,
          errorText: widget.errorMessage,
          errorMaxLines: 2,
          helperText: 'パスワードを決めてください(8〜12文字)',
          helperStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.all(16),
          suffixIcon: IconButton(
            icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
          )),
    );
  }
}
