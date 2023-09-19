import 'package:flutter/material.dart';
import 'package:flutter_full_learn/figma/util/image.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
              ),
              onPressed: () {}, 
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 44.78,left: 34.84),
                        child: ImagePath.google_icon.toWidget(),
                      ),
                      const Text('CONTINUE WITH GOOGLE',style: TextStyle(color: Color(0xff3F414E),fontSize: 14),)
                    ],
                  ),
                )
            ),
          );
  }
}