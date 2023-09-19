import 'package:flutter/material.dart';

enum ImagePath{
  // ignore: constant_identifier_names
  vector_top,water_drop,sing_up_human,facebook_icon,google_icon
}

extension ImagePathsExtension on ImagePath{
  String path(){
    return 'assets/png/${name}.png';
  }

  Widget toWidget(){
    return Image.asset(path());
  }
}