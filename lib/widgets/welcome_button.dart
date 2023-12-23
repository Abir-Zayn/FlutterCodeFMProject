import 'package:flutter/material.dart';

class welcome_button extends StatelessWidget {
  const welcome_button({super.key, this.buttonText, this.onTapLocation, this.chooseColor, this.buttonTextColor});

  final String? buttonText;
  final Widget? onTapLocation;
  final Color? chooseColor;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => onTapLocation!,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: chooseColor!,
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: buttonTextColor!,
          ),
        ),
      ),
    );
  }
}
