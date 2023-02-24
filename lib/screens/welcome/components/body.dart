import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/components/components.dart';
import 'package:login/constants.dart';
import 'package:login/screens/SignUp/signup_screen.dart';
import 'package:login/screens/welcome/components/background.dart';
import 'package:login/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.5,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'LOGIN',
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen()
                )
              )
            ),
            RoundedButton(
              text: 'SIGN UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              pressColor: kPrimaryColor,
              press: () {
                return Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen()
                  )
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}



