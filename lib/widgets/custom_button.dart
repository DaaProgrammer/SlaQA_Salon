import 'package:flutter/material.dart';
import 'package:slaqa/constants/globals.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color buttonColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: GlobalVariables.backgroundColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
