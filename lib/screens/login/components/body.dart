import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/components/components.dart';
import 'package:login/screens/SignUp/signup_screen.dart';
import 'package:login/screens/login/components/background.dart';

class Body extends StatelessWidget {
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (value) {}
            ),
            RoundedButton(
              text: 'LOGIN', 
              press: (){}
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(press: () => 
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const SignupScreen())
              )
            )
          ],
        ),
      ),
    );
  }
}

