import 'package:flutter/material.dart';
import 'package:flutter_full_learn/figma/sign_in_screen.dart';
import 'package:flutter_full_learn/figma/sign_in_sign_up_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      //theme: LightTheme().theme,
//      ThemeData.dark().copyWith(
//        tabBarTheme: const TabBarTheme(
//          labelColor: Colors.white,
//          unselectedLabelColor: Colors.red
//        ),
//          appBarTheme: const AppBarTheme(
//          centerTitle: true,
//          systemOverlayStyle: SystemUiOverlayStyle.light,
//          backgroundColor: Colors.transparent,
//          elevation: 0,
//         ),
//        progressIndicatorTheme: const ProgressIndicatorThemeData(
//          color: Colors.red
//        ),
//        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
//        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
//      ),
      debugShowCheckedModeBanner: false, // sağ üstte ki debug yazısını kaldırıyo
      home: SingInScreen(),
    );
  }
}


