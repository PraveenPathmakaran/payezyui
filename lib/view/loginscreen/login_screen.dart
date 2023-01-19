import 'package:flutter/material.dart';
import 'package:payezy/color/colors.dart';
import 'package:payezy/view/signin/signin_screen.dart';
import 'package:payezy/widgets/widgets.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/checked_box.dart';
import '../../widgets/login_text_widget.dart';
import '../../widgets/positioned_widget.dart';
import '../../widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  title: 'Sign In',
                  leftPosition: 20,
                  topPosition: 98,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                PositionedWidget(
                  title: 'Please Login To use Using App',
                  leftPosition: 20,
                  topPosition: 135,
                  fontSize: 18,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 80,
            ),
            child: Column(
              children: <Widget>[
                const TextFieldWidget(
                  hintText: 'pay@gmail.com',
                  labelText: 'Email Address',
                ),
                kHeight30,
                const TextFieldWidget(
                  hintText: '**************',
                  labelText: 'Password',
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        CheckedBoxWidget(),
                        LoginTextWidget(
                          text: 'Remember',
                          color: blackColor,
                          size: 16,
                        ),
                      ],
                    ),
                    const LoginTextWidget(
                      text: 'Forget Password?',
                      color: redColor,
                      size: 16,
                    ),
                  ],
                ),
                kHeight30,
                kHeight10,
                const ButtonWidget(
                  horizontalPadding: 45,
                  verticalPadding: 12,
                  title: 'Sign in',
                  borderRadius: 12,
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const LoginTextWidget(
                      text: 'or ',
                      color: redColor,
                      size: 11,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ),
                      ),
                      child: const LoginTextWidget(
                        text: 'Register a new account',
                        color: greyColor,
                        size: 13,
                      ),
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
