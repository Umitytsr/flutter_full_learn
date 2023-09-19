import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.keybordType,
    required this.hint,
  }) : super(key: key);

  final TextInputType keybordType;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: keybordType,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 22.36)+const EdgeInsets.only(left: 20),
                fillColor: const Color(0xffF2F3F7),
                filled: true,
                labelText: hint,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent), // Şeffaf kenarlık
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent), // Şeffaf kenarlık
                ),
              ),
            ),
          );
  }
}
