// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName,}) : super(key: key);
  final String name = 'Ümit';

  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name ${name.length}'),
              maxLines: 2,// max 2 satır yapıyo
              overflow: TextOverflow.ellipsis,// sonuna 3 nokta koyuyo
              textAlign: TextAlign.right, // textin nereden başlayacağını söylemek için
              style: const TextStyle(
              wordSpacing: 2,// kelimeler arası boşluk
              letterSpacing: 2, //harflerin arasına boşluk için
              fontSize: 16, // harf büyüklüğü
              fontWeight: FontWeight.w600, 
              color: Colors.red,
              decoration: TextDecoration.underline, // text'in altını çizer
              fontStyle: FontStyle.italic
            ), 
          ),

          Text(
              ('Welcome $name ${name.length}'),
              maxLines: 2,// max 2 satır yapıyo
              overflow: TextOverflow.ellipsis,// sonuna 3 nokta koyuyo
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ), 
            Text(
              ('Welcome $name ${name.length}'),
              maxLines: 2,// max 2 satır yapıyo
              overflow: TextOverflow.ellipsis,// sonuna 3 nokta koyuyo
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.colors),
            ),
            Text(userName ?? ''),
            Text(keys.welcome)
          ],
        ) 
      )
    );
  }
}

class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,// kelimeler arası boşluk
          letterSpacing: 2, //harflerin arasına boşluk için
          fontSize: 16, // harf büyüklüğü
          fontWeight: FontWeight.w600, 
          color: Colors.red,
          decoration: TextDecoration.underline, // text'in altını çizer
          fontStyle: FontStyle.italic
  );
}

class ProjectColors{
  static Color colors = Colors.yellow;

}

class ProjectKeys{
  final String welcome = 'Welcome';
}