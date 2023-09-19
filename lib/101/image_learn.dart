import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 200, 
            child: PngImage(
              name: ImageItems().appleLogoWithoutPath,)
            ),
          Image.asset(ImageItems().appleWithBook)
        ]),
    );
  }
}

class ImageItems{
  final String appleWithBook ='assets/png-transparent-francis-howell-school-district-cartoon-books-and-apple-blue-text-heart.png';
  final String appleLogo = 'assets/png/apple_logo.png';
  final String appleLogoWithoutPath = 'appl_logo';

}

class PngImage extends StatelessWidget {
  const PngImage({super.key,required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return  Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}