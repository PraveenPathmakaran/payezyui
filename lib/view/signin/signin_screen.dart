import 'package:flutter/material.dart';
import 'package:payezy/color/colors.dart';
import 'package:payezy/widgets/widgets.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/login_text_widget.dart';
import '../../widgets/positioned_widget.dart';
import '../../widgets/textfield_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          Container(
            height: height * 0.4,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/path.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: const <Widget>[
                PositionedWidget(
                  title: 'Register',
                  leftPosition: 20,
                  topPosition: 98,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                PositionedWidget(
                  title: 'New Account',
                  leftPosition: 20,
                  topPosition: 130,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
            ),
            child: Column(
              children: <Widget>[
                const TextFieldWidget(
                  hintText: 'aaaaaaaaaa',
                  labelText: 'Full Name',
                ),
                kHeight30,
                const TextFieldWidget(
                  hintText: 'pay@gmail.com',
                  labelText: 'Email Address',
                ),
                kHeight30,
                const TextFieldWidget(
                  hintText: '0123456789',
                  labelText: 'Mobile Number',
                ),
                kHeight20,
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: LoginTextWidget(
                        text: 'Have a Referral Code?',
                        color: redColor,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                kHeight30,
                const ButtonWidget(
                  horizontalPadding: 15,
                  verticalPadding: 12,
                  title: 'Register account',
                  borderRadius: 18,
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const LoginTextWidget(
                      text: 'or ',
                      color: redColor,
                      size: 11,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const LoginTextWidget(
                        text: 'Sign in ',
                        color: blackColor,
                        size: 13,
                      ),
                    ),
                    const LoginTextWidget(
                      text: 'with your account',
                      color: greyColor,
                      size: 13,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
