import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
   const ButtonLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: (){}, 
            child: Text('Deneme',
            style: Theme.of(context).textTheme.titleMedium)),

          ElevatedButton(onPressed:() { // bu kendiliğinden arkaplana da renk veriyor
            
          }, 
          child: const Text('Data')),

          IconButton(
            onPressed: () {
            
          }, icon: const Icon(Icons.abc_rounded)),

          FloatingActionButton(onPressed: () {
            
          },
          child: const Icon(Icons.add)),
          OutlinedButton(
            onPressed: () {
            
          }, child: const Text('class')),
          InkWell(
            onTap: () {},
            child: const Text('custom'),)
        ],
      ),
    );
  }
}
