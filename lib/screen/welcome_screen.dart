import 'package:flutter/material.dart';
import 'package:ronpa/components/bobble_button.dart';
import 'package:ronpa/components/login_input_field.dart';
import 'package:ronpa/constraints.dart';
import 'package:ronpa/screen/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = '/home';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              ? LoginInputField(title: 'ユーザー名', errorMessage: 'ユーザー名が一致しません')
              : LoginInputField(title: 'ユーザー名', errorMessage: null),
          SizedBox(height: 20),
          isPasswordError
              ? LoginInputField(title: 'パスワード', errorMessage: 'パスワードが一致しません')
              : LoginInputField(title: 'パスワード', errorMessage: null),
          SizedBox(height: 40),
          Bobble(bobbleText: 'ログイン', backgroundColor: kRed, onPressed: () {}),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RegistrationScreen.id);
            },
            child: Text(
              '新規登録',
              style: _textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}
