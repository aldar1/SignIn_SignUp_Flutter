import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color,textColor;
  final Color pressColor;
  const RoundedButton({
    super.key, 
    required this.text, 
    required this.press, 
    this.pressColor = kPrimaryLightColor,
    this.color = kPrimaryColor, 
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29)
          ),
          foregroundColor: pressColor
        ),
        onPressed: press,
        child:  Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}