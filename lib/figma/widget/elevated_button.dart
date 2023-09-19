import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.backgroundColor,
    required this.text,
    this.image,
  }) : super(key: key);

  final Color backgroundColor;
  final String text;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              onPressed: (){}, 
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: (image != null) ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 44.78,left: 34.84),
                      child: image,
                    ),
                    Text(text)
                  ],
                ) : Center(child: Text(text)),
              ) 
          ),
        );
  }
}

// vscode için git branch denemesi
// asdadadsda