import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(padding: EdgeInsets.zero, 
      
        children: [
          FittedBox( // sıkışmasını sağlar
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            )
          ),
         Container(color: Colors.red,height: 300,),
         const Divider(),
         SizedBox(
            height: 300,
            child: ListView(
              padding: const EdgeInsets.only(right: 8),
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green,width: 300,),
                Container(color: Colors.red,width: 300,),
                Container(color: Colors.blue,width: 300,),
                Container(color: Colors.yellow,width: 300,),
              ],),
            ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          // xxx
          FittedBox( // sıkışmasını sağlar
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            )
          ),
         Container(color: Colors.red,height: 300,),
         const Divider(),
         SizedBox(
            height: 300,
            child: ListView(
              padding: const EdgeInsets.only(right: 8),
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green,width: 150),
                Container(color: Colors.red,width: 150,),
                Container(color: Colors.blue,width: 150,),
                Container(color: Colors.yellow,width: 150,),
              ],),
            ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        ]),
    );
  }
}