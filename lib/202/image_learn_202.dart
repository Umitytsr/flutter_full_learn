import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePath.apple_logo.toWidget(),
    );
  }
}

enum ImagePath{
  // ignore: constant_identifier_names
  apple_logo, sing_up_human, water_drop, vector_top, facebook_icon,
}

extension ImagePathsExtension on ImagePath{
  String path(){
    return 'assets/png/${name}.png';
  }

  Widget toWidget(){
    return Image.asset(path());
  }
}