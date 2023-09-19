import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Samples')),
      body: const Text('Merahaba'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context, 
            builder: (context) =>Container(
              height: 200,
            ));
        },
        child: const Text('+'),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: 'b'),
      ]), 
    );
  }
} 