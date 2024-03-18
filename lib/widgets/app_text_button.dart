import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.colorButton,
    this.colorText,
  });

  final String textButton;
  final VoidCallback onPressed;

  final Color? colorButton;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorButton ?? Colors.blue,
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          textButton,
          style: TextStyle(
            color: colorText ?? Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
