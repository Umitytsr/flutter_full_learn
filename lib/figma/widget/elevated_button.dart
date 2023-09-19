import 'package:flutter/material.dart';
import 'package:flutter_full_learn/figma/util/image.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({super.key});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7583CA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              onPressed: (){}, 
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 19.47),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 44.78,left: 34.84),
                      child: ImagePath.facebook_icon.toWidget(),
                    ),
                    const Text('CONTINUE WITH FACEBOOK')
                  ],
                ),
              ) 
          ),
        );
  }
}