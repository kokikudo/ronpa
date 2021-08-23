import 'package:flutter/material.dart';

class RegistrationPasswordInputField extends StatefulWidget {
  const RegistrationPasswordInputField({
    Key? key,
    required this.isError,
  }) : super(key: key);

  final bool isError;

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
      maxLength: 12,
      obscureText: _hidePassword,
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (String? value) {
        return value!.length < 8 ? '8文字以上入力してください。' : null;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          labelText: 'パスワード',
          errorText: widget.isError ? 'パスワードが一致しません。' : null,
          errorMaxLines: 2,
          helperText: '半角英数字、最大12文字',
          contentPadding: EdgeInsets.all(20),
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
