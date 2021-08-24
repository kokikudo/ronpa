import 'package:flutter/material.dart';
import 'package:ronpa/components/registration_password.dart';
import 'package:ronpa/components/registration_user_name.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/components/bobble_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  static const id = '/home/registration';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isUserNameError = false;
  bool isPasswordError = false;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/anotherBackgroundImage2.jpg'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/appIcon.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text('Ronpa!', style: _textTheme.headline2),
            ],
          ),
          SizedBox(height: 30),
          isUserNameError
              ? RegistrationUserNameInputField(errorMessage: '別のユーザー名をお試しください。')
              : RegistrationUserNameInputField(errorMessage: null),
          SizedBox(height: 20),
          isPasswordError
              ? RegistrationPasswordInputField(errorMessage: 'パスワードが正しくありません。')
              : RegistrationPasswordInputField(errorMessage: null),
          SizedBox(height: 40),
          Bobble(
              bobbleText: '登録する',
              backgroundColor: kBlue,
              onPressed: () {
                setState(() {
                  isUserNameError = !isUserNameError;
                  isPasswordError = !isPasswordError;
                });
              }),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
