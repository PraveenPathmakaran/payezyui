import 'package:flutter/material.dart';
import 'package:payezy/color/colors.dart';
import 'package:payezy/view/loginscreen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await Future.delayed(const Duration(seconds: 3))
            .then((value) => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ));
      },
    );
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: whiteColor,
            image: const DecorationImage(
              image: AssetImage('assets/eayezy.png'),
            ),
          ),
        ),
      ),
    );
  }
}
