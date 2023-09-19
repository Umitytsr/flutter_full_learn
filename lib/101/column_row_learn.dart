import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex:4, child: Row(
            children: [
              Expanded(flex:1, child: Container(color: Colors.red)),
              Expanded(flex:1, child: Container(color: Colors.yellow)),
              Expanded(flex:1, child: Container(color: Colors.black)),
              Expanded(flex:1, child: Container(color: Colors.purple)),
            ],
          )), 
          const Spacer(flex: 2,),
          const Expanded(
            flex:2, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('a1'),
                Text('a2'),
                Text('a3')
              ],)),
          const Expanded(flex: 2, child: FlutterLogo())
        ],
      ),
    
    );
  }
}

 // Expanded -> sayfayı eşit parçalara bölmemizi sağlar.
 // flex kısmı oranını belli etmek için kullanılır.
 // ÖNEMLİ!! Expended sadece Row ve Column için kullanılır.
 // Spacer -> araya boşluk bırakmak için kullanılır.