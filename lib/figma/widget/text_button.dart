// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.textColor,
    required this.text,
  }) : super(key: key);

  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: textColor,
      ),
      onPressed: () {}, 
      child: Text(text));
  }
}
